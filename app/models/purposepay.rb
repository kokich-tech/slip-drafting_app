class Purposepay < ActiveHash::Base
  self.data = [
    {id: 1, name: '普通預金入金'}, 
    {id: 2, name: '当座預金入金'},
    {id: 3, name: '積立預金入金'},
    {id: 4, name: '振替（家族名義口座）'},
    {id: 5, name: 'お定期入金'},
    {id: 6, name: 'その他'}
  ]
end