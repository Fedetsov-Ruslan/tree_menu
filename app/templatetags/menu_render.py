from django import template
from app.models import MenuItem

register = template.Library()

@register.inclusion_tag('app/menu.html')
def draw_menu(menu_name: str = None):
    items = MenuItem.objects.filter(menu__name=menu_name).select_related('parent')
    menu_dict = {}
    for item in items:
        if item.parent:
            if item.parent not in menu_dict:
                menu_dict[item.parent] = []
            menu_dict[item.parent].append(item)
        else:
            if item not in menu_dict:
                menu_dict[item] = []
          
    def build_menu(menu, parent):
        children = menu_dict.get(parent, [])
        return {
            'item': parent,
            'children': [build_menu(menu, child) for child in children]
        }
    menu_tree = [build_menu(menu_dict, parent) for parent in menu_dict if parent.parent is None]
    return {'menu': menu_tree}
    