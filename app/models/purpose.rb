class Purpose < ActiveHash::Base
  self.data = [
    {id: 1, name: '現金引き出し'}, 
    {id: 2, name: '納税振替（電気、ガス、公共料金を含む）'},
    {id: 3, name: '振替（自己・家族名義口座）'},
    {id: 4, name: '他行口座振込'}, 
    {id: 5, name: '当行口座振込'}, 
    {id: 6, name: '金融商品購入'},
    {id: 7, name: '融資返済'},
    {id: 8, name: '手数料支払'},
    {id: 9, name: 'その他'}
  ]
end
