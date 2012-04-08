require 'application_constants'
require "#{RAILS_ROOT}/app/models/page"

include ApplicationConstants

class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :page_type

      t.timestamps
    end
    
    Page.create :title=> "Главная страница",
                :content => "Наша компания занимается производством рекламных сувениров: это силиконовые браслеты, рекламные слеп браслеты, контрольные браслеты из винила, вязанные напульсники.  Так же производим нестандартные заказы на промо-сувениры. Наша специализация –сувениры и промо-продукция для молодежной аудитории.  На нашем сайте вы найдете библиотеку со статьями о технологиях производства рекламных сувениров.",
                :page_type => PAGE_TYPES[:main_page]
    Page.create :title => "О компании",
                :content => "<p><span style=\"font-size: small;\" class=\"Apple-style-span\"></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">Наше Агентство с 2005 года производит и поставляет на российский рекламный рынок инструменты для промо и btl-акций, массовых мероприятий и шоу-бизнеса.</span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">Это силиконовые и слеп-браслеты, одноразовые контрольные браслеты из бумаги и винила, брелки из пвх, магниты, вязанные напульсники, виниловые игрушки и многое другое. Наша специализация – молодежная аудитория. </span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">На российском рынке рекламных сувениров не хватает оригинальных и эффективных промо-подарков, нацеленных на различные молодежные субкультуры. Наша цель – поиск новых видов «сувенирки» для наших клиентов. Именно поэтому мы работаем напрямую с небольшими дизайн-бюро, фабриками и цехами в Гонконге, Тайване и Китае. </span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">Наши заказчики – рекламные и btl-агентства, корпоративные клиенты, общественно-политические организации, концертные агентства и субкультурные сообщества. </span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">Один офис нашего агентства расположен в Москве, другой в Шанхае (Китай).</span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">
      <br>На нашем сайте вы найдете постоянно пополняемую библиотеку статей, необходимых каждому сувенир-менеджеру, а так же всем имеющим дело с молодежной модой.</span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">
      <br></span></span></p>
<p><span style=\"font-size: medium;\"><span style=\"font-size: small;\" class=\"Apple-style-span\">Другое направление нашей работы - производство и поставка на российский рынок молодежных аксессуаров. Это сумки, чехлы для ноутбуков, кошельки, бижутерия. Мы являемся поставщиком розничных магазинов, работающих на рынке молодежной streetwear моды. Если вы торгуете молодежной одеждой, аксессуарами, обувью и бижутерией, то вам может быть интересно наше оптовое предложение.</span></span></p>
",
                :page_type => PAGE_TYPES[:about]
    Page.create :title => "Наши клиенты",
                :content => "<p>&nbsp;</p>
<p>
<img alt='' style='width: 159px; height: 67px;' src='/images/comedy.gif' border='0' height='65' width='162'>&nbsp;<img alt='' style='width: 176px; height: 54px;' src='/images/NEST.jpg' border='0' height='46' width='170'><img alt='' style='width: 193px; height: 71px;' src='/images/Bull.jpg' border='0' height='82' width='200'></p>
<p>&nbsp;</p>
<p>&nbsp;<img alt='' style='width: 186px; height: 59px;' src='/images/coca.jpg' border='0' height='64' width='200'><img alt='' style='width: 190px; height: 46px;' src='/images/dozor_logo.gif' border='0' height='49' width='200'><img alt='' style='width: 181px; height: 63px;' src='/images/megagym.jpg' border='0' height='82' width='200'></p>
<p>&nbsp;</p>
<p><img alt='' style='width: 157px; height: 71px;' src='/images/ikea.gif' border='0' height='80' width='162'>&nbsp;&nbsp;<img alt='' style='width: 180px; height: 70px;' src='/images/Miller.jpg' border='0' height='82' width='200'><img alt='' style='width: 184px; height: 60px;' src='/images/ldpr.gif' border='0' height='71' width='200'><img alt='' src='/images/Nokia.jpg' border='0' height='82' width='200'>&nbsp;&nbsp;&nbsp;<img alt='' style='width: 102px; height: 80px;' src='/images/dfm.jpg' border='0' height='100' width='114'>&nbsp;&nbsp; <img alt='' style='width: 202px; height: 83px;' src='/images/Panas.jpg' border='0' height='82' width='200'><img alt='' src='/images/nokia2.gif' border='0' height='75' width='181'><img alt='' style='width: 176px; height: 62px;' src='/images/tatu.jpg' border='0' height='82' width='200'></p>
  </div>",
                :page_type => PAGE_TYPES[:clients]
    Page.create :title => "Библиотека",
                :content => "<p>Все, что нужно знать сувенир-менеджеру находится здесь, просто нажмите на название категории.
На сегодняшний день у нас есть 112 статей, разбитых на 16 категорий и мы постоянно добавляем новые.</p>",
                :page_type => PAGE_TYPES[:library]
    Page.create :title => "Контактная информация",
                :content => "<div class=\"central_column\"><h2>Основной офис в <span class=\"purple\">Москве</span></h2>
<div class=\"contact_field\">
  <span style=\"font-weight: bold;\"> Телефон:</span><b>(495) 978-1543</b>
  <span style=\"font-weight: bold;\">Факс:</span><b>(495) 629-5131</b>
  <span style=\"font-weight: bold;\">Электропочта:</span>
  <a href=\"mailto:braslets@gmail.com\"><b>braslets@mail.ru</b></a>
  <span style=\"font-weight: bold;\"> Адрес:</span><b> Газетный переулок, дом 5-3.
  <br>метро “Охотный ряд”, Москва, Россия, 101999</b>
  <img src=\"/images/map.png\">
</div></div>
",
                :page_type => PAGE_TYPES[:contacts]
  end

  def self.down
    drop_table :pages
  end
end
