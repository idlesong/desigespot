### schema
- designs: has_many photos
- photos: image description label belongs_to design
- products: name, type, tag1(size), tag2(matirial), tag3
- brands: name, logo, description(story:起源，发展，巅峰，现状)，markets
- markets: name, num_total_stores
- stores: name, location, num_total_brands

商城产品为模型的设计交流指导，这个可以作为主要卖点。

如何选，如何配出各种风格是最主要的需求；算出成本。
效果图直接链接到商城产品如何？直接算出预算？
软装素材中的经典案例，直接链接到


### feature request
1. 在本机安装 pg
1. 注册登录的逻辑的界面有点乱
 - 看应该不需要登录（需要登录情况：发帖，上传设计）
 - 登录界面包含注册
 - 导航条上增加avant
 - 导航条上登录按钮放靠右对齐
1. 界面美化 （bootstrap化，可以个别的增加）
1. 设计一个带图标的快速导航
1. full feature forum
 - Categories
 - top
 - reply with username
 - topic:follow, like, favorite (followed_user_ids,followed_user_counts)
 - 支持Morkdown topic and reply
1. 设计师的收藏夹（灵感图集，除了设计师的灵感图集，还应该有设计的讲究之类）


### bugs
1. 上传按钮设计异常
1. 注册后还需要重新登录
1. 会显示一个空的的设计
1. new topic 未隐藏designer_id
1. form_for的输入框都太小，界面美化
1. current_user 经常与 @designer混用
1. test
