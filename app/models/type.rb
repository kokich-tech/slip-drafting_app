class Type < ActiveHash::Base
  self.data = [
      {id: 1, name: '現金'}, {id: 2, name: '小切手'}, {id: 3, name: '約束手形'},
      {id: 4, name: '小切手・約束手形'}, {id: 5, name: '配当金'}
  ]
end