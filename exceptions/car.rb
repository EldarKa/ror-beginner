  
классная станция
  def initialize(name_station)
    @name_station = name_station
    @stationTrains = массив.новый
  конец

  def staying_train(name_train) # поезд прибыл на станцию
    
    @stationTrains = @stationTrains + [name_train]
    @stationTrains.каждый {/поезд/ ставит поезд }
  конец

  def waning_train(name_train) # поезд покидает станцию
    
    @stationTrains = @stationTrains - [name_train]
    @stationTrains.каждый {/поезд/ ставит поезд }
  конец

конец

классный маршрут
  attr_reader :@route0 # выводим всесь маршрут для прикрепления к поезду
  def initialize(start_station, finish_station) # начало и конец маршрута
    @start_station = [start_station]
    @finish_station = [finish_station]
    @route0 = @start_station + @finish_station
    @intermediate_station = массив.новый
  конец
  
  def intermediate_station(name_station) # добавление станции
    @intermediate_station= @intermediate_station + [name_station]
    @route0 = @start_station + @intermediate_station + @finish_station
    
  конец
  
  def delete_station(name_station) # удаление станции
    @intermediate_station = @intermediate_station - [name_station]
    @route0 = @start_station + @intermediate_station + @finish_station
    
  конец
  
   вывод def
    @маршрут.each { |x| puts x } # перечисление маршрута
  конец
конец
классный поезд
  def initialize(number,type1,wagon) # номер тип транспорта число вагонов
    @number = число
    @type1 = type1
    @wagon = вагон
    @скорость=0
  конец
  
  
  def speed_change(num) #меняем скорость на любое значение, при отрицательном значение скорость 0
    @speed=@speed+num
    если @speed < 0
      @скорость=0
      put @speed
    конец
  конец
  def wagon_sum # повышаем число вагонов
    если @speed= =0
      @вагон+=1
      ставит @wagon
    конец
  конец
  
  def wagon_del #понижаем число вагонов
    если @speed= =0
      @вагон-=1
      ставит @wagon
    конец
  конец
  
  def train_route # передаем данные о маршруте
    @train_r=маршрут.маршрут 0
    @N=0
  конец
  
  def train_up  #перемещение вперед НЕ УЧИТЫВАЛОСЬ ЧТО ЗНАЧЕНИЕ ПРИВЫСИТ ПОРОГ
    @N+=1
    ставит " поезд на станции #{train_r[N]}"
  конец
  def train_down #перемещение назад
    @N- =1
    ставит " поезд на станции #{train_r[N]}"
  конец
 
