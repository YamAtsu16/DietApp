class EatTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },{ id: 2, name: '00:00' },{ id: 3, name: '00:30' },{ id: 4, name: '1:00' },{ id: 5, name: '1:30' },
    { id: 6, name: '2:00' },{ id: 7, name: '2:30' },{ id: 8, name: '3:00' },{ id: 9, name: '3:30' },{ id: 10, name: '4:00' },
    { id: 11, name: '4:30' },{ id: 12, name: '5:00' },{ id: 13, name: '5:30' },{ id: 14, name: '6:00' },{ id: 15, name: '6:30' },
    { id: 16, name: '7:00' },{ id: 17, name: '7:30' },{ id: 18, name: '8:00' },{ id: 19, name: '8:30' },{ id: 20, name: '9:00' },
    { id: 21, name: '9:30' },{ id: 22, name: '10:00' },{ id: 23, name: '10:30' },{ id: 24, name: '11:00' },{ id: 25, name: '11:30' },
    { id: 26, name: '12:00' },{ id: 27, name: '12:30' },{ id: 28, name: '13:00' },{ id: 29, name: '13:30' },{ id: 30, name: '14:00' },
    { id: 31, name: '14:30' },{ id: 32, name: '15:00' },{ id: 33, name: '15:30' },{ id: 34, name: '16:00' },{ id: 35, name: '16:30' },
    { id: 36, name: '17:00' },{ id: 37, name: '17:30' },{ id: 38, name: '18:00' },{ id: 39, name: '18:30' },{ id: 40, name: '19:00' },    
    { id: 41, name: '19:30' },{ id: 42, name: '20:00' },{ id: 43, name: '20:30' },{ id: 44, name: '21:00' },{ id: 45, name: '21:30' },   
    { id: 46, name: '22:00' },{ id: 47, name: '22:30' },{ id: 48, name: '23:00' },{ id: 49, name: '23:30' }
  ]

  include ActiveHash::Associations
  has_many :meals
end