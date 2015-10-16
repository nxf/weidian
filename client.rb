require "./api"

api = Api.new("b8c1e8e5b9f6aa17baf742ebf66dabb60002518540","1.0","json")
#api.execute({itemid:"1146288080"},{:method => "vdian.item.get"})

api.execute_vdian_item_get({itemid:"1146288080"})


#api.execute({page_num:1,page_size:10,orderby:1},{:method => "vdian.item.list.get"})