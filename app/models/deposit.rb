class Deposit < ActiveHash::Base
  self.data = [
      {id: 1, name: '当座'}, {id: 2, name: '普通'}, {id: 3, name: '定期'},
      {id: 4, name: '外貨普通'}, {id: 5, name: '外貨定期'}
  ]
end