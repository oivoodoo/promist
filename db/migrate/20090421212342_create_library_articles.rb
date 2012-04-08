require "#{RAILS_ROOT}/app/models/library_article"

class CreateLibraryArticles < ActiveRecord::Migration
  def self.up
    create_table :library_articles do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :library_type
      t.integer :position, :default => 0

      t.timestamps
    end

    LibraryArticle.create :title => "Магнит",
      :description => "Магнит - это современный небольшой сувенир для использования дома и в офисе. Благодаря своей низкой цене отлично подойдет для раздачи на рекламных и промоакциях.",
      :library_type => "materials",
      :content => "Магнит - это современный небольшой сувенир для использования дома и в офисе. Благодаря своей низкой цене отлично подойдет для раздачи на рекламных и промоакциях.
<blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>&nbsp;&nbsp;&nbsp;</span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>
    <br></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>Изготовление магнитов не сложное, оно не занимает много времени. При изготовление магнитов можно поместить календарь отрывной ежемесячный, блок для записей или маленький термометр.</span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>Традиционно магниты крепятся на холодильнике, кухонной плите, стиральной машине или другой бытовой технике находящейся на кухне, а также любой другой металлической поверхности. Поэтому чаще на магнитах размещают рекламу адресованную детям и женщинам. Постоянно находясь перед глазами хозяйки делает Вашу торговую марку или логотип компании более узнаваемым. Наибольший интерес представляет для рекламы продуктов питания, бытовой химии, продуктовых и хозяйственных магазинов и многого другого, что имеет отношение к дому и быту.</span>
  <br>
  <br><span style='color: rgb(0, 11, 108); font-family: 'Lucida Grande';' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>Рекламный</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>магнит</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>на</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>холодильник</span></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>Это самый распространенный&nbsp;рекламный магнит. Магниты крепятся на холодильник или на любую металическую поверхность.</span>

  <br><span style='font-size: 12px;' class='Apple-style-span'>Изготовление магнитов начинается с печати полноцветного изображения с Вашей рекламой, затем изображение ламинируется, чтобы улучшить внешний вид и повысить защитные свойства изделия.&nbsp;</span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>После этого заламинированное изображение клеется на магнитную ленту и вырубается нужная форма магнита. При изготовлении магнитов форма и размер могут быть стандартными (цены на них представлены в таблице ) или по Вашему желанию, цена на них расчитывается индивидуально.</span>
  <br><span style='font-size: 12px;' class='Apple-style-span'>Готовый&nbsp;рекламный&nbsp;магнит&nbsp;упаковывается в полиэтиленовый пакетик.</span>
  <br><span style='font-size: 12px;' class='Apple-style-span'>&nbsp;</span><span style='font-size: x-large;' class='Apple-style-span'>
    <br></span><span style='color: rgb(0, 11, 108); font-family: 'Lucida Grande';' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>Магнит</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>закатной</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>для</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>крепление</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>на</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>металические</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>поверхности</span></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>Изготовление магнитов&nbsp;закатных такое же как и у закатных значков.</span>

  <br><span style='font-size: 12px;' class='Apple-style-span'>изготовление магнита начинается с печати, а &nbsp;потом ламинируется и закатывается в круглую или прямоугольную металическую заготовку.</span>
  <br><span style='font-size: 12px;' class='Apple-style-span'>С обратной стороны&nbsp;закатного магнита вместо застежки-булавки вставляют магнитную резину , которая позволяет крепить на холодильник или</span>
  <br><span style='font-size: 12px;' class='Apple-style-span'>стиральную машинку. Такие рекламные магниты прочнее и объемней своих собратьев, но есть и минус - невозможность изготовление магнита каких либо других форм или размеров.</span>
  <br>
  <br><span style='color: rgb(0, 11, 108); font-family: 'Lucida Grande';' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>Рекламный</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>акриловый</span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span><span style='font-size: x-large;' class='Apple-style-span'>магнит</span></span><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span>

  <br><span style='font-size: 12px;' class='Apple-style-span'><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>Рекламный</span><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>акриловый</span><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>магнит</span>&nbsp;новое в сувенирной продукции. Изготовление магнитов начинается с вырубки квадратной рамки , внутри которой вставляется изображение с Вашей рекламой заливается смолой, тем самым защищая изображение от механических воздействий. С обратной стороны крепится магнитная резина для креплению к холодильнику или металическому предмету. Такой рекламный магнит не уступает по прочности закатным магнитам и имеет привлекательный вид.&nbsp;</span>
  <br><span style='font-size: 20px; color: rgb(0, 11, 108); font-family: 'Lucida Grande';' class='Apple-style-span'>
    <br></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-family: 'Lucida Grande';' class='Apple-style-span'><span style='font-family: Tahoma;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>Магнит</span></span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'> - </span></span></span><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>термометр</span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span></span><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>с</span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span></span><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>фирменным</span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>&nbsp;</span></span></span><span style='color: rgb(0, 0, 128);' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'>логотипом</span></span></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>Среди полезных магнитов достойное место занимает магнит - термометр. Календарный год закончиться нужен &nbsp;будет новый календарь, магнит с блоком для записей рано или поздно закончатся, а магнит - термометр - &nbsp;полезная вещь не на один год , &nbsp;вместе с ним Ваша реклама будет долго напоминать о Вас.&nbsp;<span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>Изготовление</span><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>магнитов</span>&nbsp;схоже с плоским магнитом, с одной оговоркой , так &nbsp;как вклеивается стеклянная колба, указывающая температуру окружающей среды.</span>

  <br><span style='font-size: 20px; color: rgb(54, 54, 54);' class='Apple-style-span'>&nbsp;</span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 20px; color: rgb(0, 11, 108); font-family: 'Lucida Grande';' class='Apple-style-span'><span style='font-size: x-large;'>Магнит<span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'> - </span>блок<span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>&nbsp;</span>для<span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>&nbsp;</span>записей</span></span>
  <br><span style='font-size: 12px;' class='Apple-style-span'>Если при изготовлении магнита прикрепить блокнот с отрывными листами , то &nbsp; &nbsp;получится &nbsp;многофункциональный&nbsp;магнит на холодильник с блокнотом. Не секрет, что все &nbsp;в &nbsp;семье пользуются холодильником и постоянно будут видеть рекламный магнит. Очень удобно при походе в магазин воспользоваться для записи необходимых продуктов , магнит - блокнот всегда под рукой. Изготовление магнитов с блоком для записей &nbsp; стоимость повышается незначительно , но значительно возрастают их полезные свойства. При&nbsp;изготовлении магнита&nbsp;к блокноту прикрепляются 25 отрывных листов с вашей рекламой, что дополнительно напомнит о компании подарившей этот сувенир.</span>

  <br><span style='font-size: 20px; color: rgb(0, 11, 108); font-family: 'Lucida Grande';' class='Apple-style-span'>
    <br></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-family: 'Lucida Grande';' class='Apple-style-span'><span style='font-family: Tahoma;' class='Apple-style-span'><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>Магнит</span></span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>&nbsp;</span></span></span><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>с</span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>&nbsp;</span></span></span><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>отрывным</span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>&nbsp;</span></span></span><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>ежемесячным</span></span><span style='font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>&nbsp;</span></span></span><span style='font-size: x-large;' class='Apple-style-span'><span style='color: rgb(0, 0, 128);' class='Apple-style-span'>календарем</span></span></span></blockquote><blockquote style='border-style: none; margin: 0px 0px 0px 40px; padding: 0px;' class='webkit-indent-blockquote'><span style='font-size: 12px;' class='Apple-style-span'>Можно разместить отрывной ежемесячный календарь. Целый год магнит - календарь с Вашей рекламой целый год, семья получившая в подарок, будет обращать на него внимание.&nbsp;<span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>Магнит</span><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>крепится</span><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>на</span><span style='font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>холодильник</span>&nbsp;или на любое удобное для Вас место. При изготовлении магнитов используется магнитная резина толщиной 0,7 мм с заламинированным изображением , что создает хорошее крепление к холодильнику или любому металическому предмету.</span>
  <br>

  <br><span style='font-size: 12px;' class='Apple-style-span'>/материал сайта: reklamuss.ru/</span>
  <br></blockquote><span style='font-family: Times;' class='Apple-style-span'>
  <div style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial; background-color: rgb(255, 255, 255);'><span style='margin: 0px; padding: 0px; font-weight: bold; font-size: 12px;' class='Apple-style-span'><span style='margin: 0px; padding: 0px; font-weight: normal;' class='Apple-style-span'>
        <p style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial;'>&nbsp;</p>
        <p style='margin: 0px; font-family: Tahoma; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'>&nbsp;</p>
        <p style='margin: 0px 0px 10px 10px; font-family: 'Lucida Grande'; font-style: normal; font-variant: normal; font-weight: normal; font-size: 20px; line-height: normal; font-size-adjust: none; font-stretch: normal; color: rgb(0, 11, 108); text-align: left;'>&nbsp;</p>
        <div style='text-align: left;'>
          <br>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p></span></span>
  </div>
  <div style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial; background-color: rgb(255, 255, 255);'>&nbsp;
  </div></span>
  </div>",
      :position => 0
    
    LibraryArticle.create :title => "Что такое нейлон?",
      :description => "Все об этом современном материале!",
      :library_type => "materials",
      :content => "Все об этом современном материале!
<span style='font-size: 10pt; font-family: Arial;'>&nbsp;&nbsp;&nbsp; Сегодня нейлоны относятся к числу наиболее распространенных полимеров. В 1935 году группа ученых под руководством Доктора Волласа Каротерза в фирме Du Pont разработала материал, состоящий из водорода, азота, кислорода и углерода. Ученые пытались найти материал, аналогичный по качественным характеристикам шелку. Открытие было сделано случайно: разогрев смесь каменноугольной смолы, воды и этилового спирта, ученые обнаружили, что получилось 'нечто' — волокно, похожее на шелк, прозрачное и очень прочное. Название этого волокна появилось позже, в 1939 году на Всемирной ярмарке в Нью Йорке - '<b><i>NY</i></b><i>lon</i>' ('нейлон' или 'найлон') - по первым буквам названия города <b>N</b>ew <b>Y</b>ork. 
  <p>&nbsp;</p></span>
<p align='justify'><span style='font-size: 10pt; font-family: Arial;'>Из общего количества полиамидов, производимых сегодня, 42% приходится на нейлон 6.6. Промышленное производство нейлона 6.6 является результатом реакции между адипиновой кислотой (adipic acid) и гексаметиленовым диамином (hexamethylene diamine)
    <p>&nbsp;</p></span></p>
<p align='justify'><span style='font-size: 10pt; font-family: Arial;'>Нейлоны также называют полиамидами, поскольку они содержат характерные амидные группы в своих основных цепочках. Эти амидные группы полярны, и могут образовывать друг с другом прочные водородные связи. 
    </span></p>
<p style='text-align: left;'><span style='font-size: 10pt; font-family: Arial;'><img src='/images/1189586190.jpg' align='right' height='158' width='213'>Нейлон, схема которого показана выше, имеет название 'нейлон 6.6', поскольку каждое повторяющееся звено цепи полимера содержит два участка из атомов углерода, каждый из которых содержит по шесть углеродных атомов. Другие разновидности неилонового ряда обладают различным количеством атомов углерода в этих участках. 
    </span></p>
<p style='text-align: left;'><span style='font-size: 10pt; font-family: Arial;'>Коммерческое использование нейлона началось в октябре 1938. Нейлон - первый синтетический полимер, физические свойства которого превосходят свойства некоторых металлов. Нейлон имеет невероятное сочетание свойств - высокую прочность, среднюю жесткость и устойчивость к высокой температуре (+85°C), горючим и смазочным веществам и большинству химикатов. Однако, нейлон подвержен воздействию фенолов, сильных кислот и окислителей
    <p>&nbsp;</p></span></p>
<p style='text-align: left;'><span style='font-size: 10pt; font-family: Arial;'>Такие свойства нейлона, как высокая прочность и устойчивость к высокой температуре, делают возможным его использование в технических целях. Таким образом, нейлон попадает в категорию полимеров, известных как 'инженерные термопластики'
    <p>&nbsp;</p></span></p>
<p style='text-align: left;'><span style='font-size: 10pt; font-family: Arial;'>Помимо прекрасных физических качеств, нейлон обладает также превосходными электроизоляционными свойствами. Это обусловило широкое применение изделий из нейлона 6.6 в области электротехники.</span></p>
<p style='text-align: left;'><span style='font-size: 10pt; font-family: Arial;'>
    <br></span></p>
<p>&nbsp;</p>
<p align='justify'><span style='font-size: 10pt; font-family: Arial;'>Продукция из нейлона должна храниться в прохладном, сухом помещении, не допуская воздействия прямых солнечных лучей в первоначальной упаковке. Эти меры значительно продлят срок эксплуатации изделий из нейлона.</span></p>
  </div>
",
      :position => 1
      
    LibraryArticle.create :title => "Силикон",
      :description => "Силикон - химический материал, сочетающий в себе твердость стекла с мягкостью пластилина...",
      :library_type => "materials",
      :content => "Силикон - химический материал, сочетающий в себе твердость стекла с мягкостью пластилина...
<span style='font-family: Times;' class='Apple-style-span'>
  <div style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial; background-color: rgb(255, 255, 255);'>

    <div style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial; background-color: rgb(255, 255, 255);'>
      <p style='margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Tahoma,Verdana,Arial;'><span style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial;'><span style='margin: 0px; padding: 0px; font-size: 13px;' class='Apple-style-span'>Силикон - название группы материалов, которые имеют строение в виде основной неорганической кремний-кислородной цепи (...-Si-O-Si-O-Si-O-...) с присоединенными к ней боковыми органическими группами, которые крепятся к атомам кремния.&nbsp; Варьируя длину основной кремний-органической цепи, можно синтезировать силиконы с разными свойствами. Силиконы могут иметь консистенцию жидкости, геля, резины или твердого пластика.&nbsp;</span></span></p>
      <p style='margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Tahoma,Verdana,Arial;'><span style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial;'><span style='margin: 0px; padding: 0px; font-size: 13px;' class='Apple-style-span'>Силикон обладает высокими электроизоляционными качествами и большой термостойкостью и морозостойкостью. Он сохраняет эластичностьв интервале температур от -60 до +200 °C и широко применяется в современной технике (жароупорные прокладки, клапаны, мембраны, детали прожекторных установок, электроизоляционные материалы и др.).</span></span></p>
      <p style='margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Tahoma,Verdana,Arial;'><span style='margin: 0px; padding: 0px; font-family: Tahoma,Verdana,Arial;'><span style='margin: 0px; padding: 0px; font-size: 13px;' class='Apple-style-span'>Многочисленные кремнийорганические полимеры используют для приготовления хладостойких (теплостойких) смазок, жидкостей, работающих при температурах от -100 до +250 °C. Химическая инертность и низкая токсичность материалов на основе силиконов позволяют применять их для протезирования мягких тканей человека.</span></span></p>
      <p style='margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Tahoma,Verdana,Arial;'><span style='font-size: 13px;' class='Apple-style-span'>
          <br></span></p>

      <p style='margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Tahoma,Verdana,Arial;'><img alt='' src='/images/Untitled_1.png' border='0'><span style='font-size: 13px;' class='Apple-style-span'>
          <br></span></p>
      <p style='margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Tahoma,Verdana,Arial;'><span style='font-size: small;' class='Apple-style-span'><span style='font-style: italic;' class='Apple-style-span'>Так выглядит силикон, из которого делают наши браслеты.</span></span></p>
    </div>
  </div></span>
  </div>
  ",
      :position => 2

    LibraryArticle.create :title => "ПВХ (пластизоль, PVC)",
      :content => "ПВХ является широко распространенной в промышленности и в быту пластмассой с высокой степенью устойчивости...
<span style='font-size: 12px; font-family: Arial;' class='Apple-style-span'>
  <p style='font-size: 12px; color: rgb(0, 0, 0); font-family: Arial,Verdana,Tahoma,Helvetica,sans-serif;'><span style='font-size: 13px; font-family: Tahoma;' class='Apple-style-span'><span style='font-size: xx-small;'><span style='font-weight: bold;' class='Apple-style-span'>Поливинилхлорид</span> (ПВХ) относится к старейшим искусственным материалам. Впервые поливинилхлорид был получен в лабораторных условиях в 1835 году французским горным инженером и химиком Анри Виктором Реньо, который, получив раствор винилхлорида, случайно обнаружил, что по истечении некоторого времени в пробирке образовался белый порошок.</span></span></p>
  <p style='margin: 0px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: small;' class='Apple-style-span'><span style='font-size: xx-small;'>В 1878 году продукт полимеризации винилхлорида впервые был исследован более подробно, но результаты исследований так и не стали достоянием промышленности. Только в 1913 году немецкий ученый Фриц Клатте получил первый патент на производство ПВХ. Он предполагал использовать трудно воспламеняемый поливинилхлорид вместо легко воспламеняемого целлулоида. Начавшаяся Первая мировая война помешала исследованиям. Производство ПВХ в крупных масштабах началось в 30-е годы в Германии. В это же время успешные разработки в этой области были проведены в США и Англии. После окончания Второй мировой войны поливинилхлорид стал самым массовым материалом для изготовления труб, профилей, покрытий для пола, оконных рам, кабельной изоляции и множества других пластмассовых изделий. ПВХ вытеснил те материалы, которые уступали ему по своим техническим свойствам.</span></span></p>
  <p style='margin: 0px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: small;' class='Apple-style-span'><span style='font-size: xx-small;'>По разнообразию способов переработки и применения ПВХ превосходит все остальные искусственные материалы. Он бывает мягким и твердым. Твердый ПВХ часто обозначается как непластифицированный, мягкий - как пластифицированный.</span></span></p>

  <p style='margin: 0px; min-height: 14px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: 13px; font-family: Tahoma;' class='Apple-style-span'><span style='font-size: xx-small;'><span style='font-weight: bold;' class='Apple-style-span'>Пластизоль - </span>производное от пвх вещество. Именно из пластизоля делают брелки, магниты и многие другие промо-сувениры.</span></span><span style='font-size: xx-small; font-family: Tahoma;'>
      <br></span></p>
  <p style='margin: 0px; min-height: 14px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: 13px; font-family: Tahoma;' class='Apple-style-span'><span style='font-size: xx-small;'>Пластизоль - пастообразный материал, приготовленный из поливинилхлорида и пластификаторов. При обычных температурах пластизоль представляет собой жидкую или пастообразную массу, которой можно придать любую форму. При нагревании пластизоль застывает. В иностранной литературе пластизоль обозПВХ является широко распространенной в промышленности и в быту пластмассой с высокой степенью устойчивости...начается как PVC.</span></span><span style='font-size: xx-small; font-family: Tahoma;'>
      <br></span></p>
  <p style='margin: 0px; min-height: 14px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: 13px;' class='Apple-style-span'>
      <br></span></p>
  <p style='margin: 0px; min-height: 14px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-size: xx-small; font-family: Tahoma;'><img alt='' src='/images/PVC3.gif' border='0'></span><span style='font-size: 13px;' class='Apple-style-span'><span style='font-size: xx-small;'>

        <br></span></span></p>
  <p style='margin: 0px; min-height: 14px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-style: italic;' class='Apple-style-span'><span style='font-size: xx-small;'>&nbsp;Косметичка из пластизоля&nbsp;(изготовлено для <a href='http://www.kawaiifactory.ru' target='_blank'>www.kawaiifactory.ru</a>)&nbsp;</span></span></p>
  <p>&nbsp;</p>
  <p style='margin: 0px; font-family: Arial; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal;'><span style='font-family: Arial;' class='Apple-style-span'>
      <br></span></p>
  <br>

  <p>&nbsp;</p>
  <p style='font-size: 12px; color: rgb(0, 0, 0); font-family: Arial,Verdana,Tahoma,Helvetica,sans-serif;'><span style='font-family: Tahoma;'>
      <br></span></p></span>
  </div>",
      :library_type => "materials",
      :description => "ПВХ является широко распространенной в промышленности и в быту пластмассой с высокой степенью устойчивости...",
      :position => 3

    LibraryArticle.create :title => "Другие способы нанесения изображения",
      :content => "<span style='font-size: xx-small;'><span style='color: rgb(0, 0, 0);'>Описание основных способов нанесения изображения на сувенирную продукцию</span></span>
<p><span style='font-size: medium;'><strong>Лазерная гравировка</strong>
    <br>Способ нанесения рисунка, при котором происходит структурное изменение поверхности сувенира под воздействием лазерного луча.</span></p>
<p><span style='font-size: medium;'>Идеально подходит для обработки металлических и деревянных поверхностей. Позволяет воспроизвести рисунок заказчика с филигранной точностью, но лишь одним тоном.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Флексопечать 
      <br></strong>Суть метода, - полимерное клише для разных красочных слоёв поочерёдно прокатывается по поверхности изделия. Преимущество флексопечати, - высокая скорость.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Прямая печать </strong>

    <br>Используется при нанесении рисунка на цилиндрические поверхности большого размера (керамику, стекло, аркопал).</span></p>
<p><span style='font-size: medium;'>При этом используются специальные двухкомпонентные краски, которые непосредственно наносятся на поверхность изделия. Во время сушки, краски впитываются в поверхность изделия и застывают.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Деколь 
      <br></strong>Это технология, в которой применён принцип переводной картинки, - сначала производится печать на бумаге, затем бумага покрывается лаком, потом отмачивается в воде и переносится на керамическую или стеклянную поверхность.</span></p>
<p><span style='font-size: medium;'>Во время обжига краска впекается в поверхностный слой, образуя твёрдую однородную массу с неограниченным сроком использования.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Тиснение</strong>
    <br>Применяется при нанесении вдавленного (тиснёного) рельефного рисунка на поверхность кожи или кожзаменителя, а также на деревянную поверхность. </span></p>

<p><span style='font-size: medium;'>Во время обработки, поверхность кожаной обложки сувенирного изделия кратковременно, но сильно нагревается для стойкого изменения формы её рельефа. Обработка происходит в термопрессе, в котором закрепляется полимерное или металлическое клише, входящее в тесное соприкосновение в поверхностью обрабатываемого изделия при воздействии высокой температуры. Если при тиснении используется фольга, она оплавляется и оставляет на поверхности металлический оттиск.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Вышивка</strong>
    <br>Позволяет наносить фирменную символику на мягкие ворсистые ткани, даже в тех случаях, когда другие технологии неприемлемы. </span></p>
<p><span style='font-size: medium;'>Смета по вышиванию выставляется по конкретному оригинал-макету, т.к. определяется конкретное количество стежков и площадь вышивания. Количество цветов нитей используемых при вышивании логотипа не ограничено, однако по качеству и точности передачи рисунка данная технология имеет вполне определённые пределы.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Термотрансфер 
      <br></strong>По своей сути напоминает термо-переводную картинку. Рисунок печатается на бумаге специальными термостойкими красками, затем термостанком&nbsp; переносятся на рельефную (например, цилиндрическую) поверхность изделия.</span></p>
<p><span style='font-size: medium;'>Как следствие, технология термотрансфера часто используется для нанесения символики на изогнутые&nbsp; тканевые поверхности, например, на козырёк бейсболки.</span></p>

<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Наклейки</strong>
    <br>Наклейки (или 'стикеры') представляют собой покрытую прозрачной плёнкой подложку с нанесённой на неё фирменной символикой. Оборотная сторона подложки покрыта липким слоем и защищена от высыхания. Для подложки используют бумагу, картон или пластик.&nbsp; </span></p>
<p><span style='font-size: medium;'>Так как наклейки могут быть нанесены практически на любую поверхность (на которую, например, не ложатся краски), и размещены там, где позволяет фантазия рекламодателя, область их&nbsp; применения очень широка, - от вагонов Метрополитена до оформления рабочих мест служащих. Если логотип на наклейке сверху залит смолой, - она может использоваться в виде эффектного фирменного знака для крепления к офисной аппаратуре,&nbsp; компьютерным корпусам, телефонным трубкам и т.п. </span></p>
<p><span style='font-size: medium;'>Для печати символики на самих наклейках чаще всего используется шелкография или тампопечать.</span></p>
<p>&nbsp;</p>
<p><span style='font-size: medium;'><strong>Механическая гравировка 
      <br></strong>Нанесение графики путём изменения поверхности изделия механической фрезой.</span></p>

<p>&nbsp;</p>
<p><span style='font-size: medium;'>ИСПОЛЬЗОВАНЫ МАТЕРИАЛЫ 
    <br>prclub.ru 
    <br>Egifts.ru™&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br>Сувенирка 
    <br>Редакция Сантино </span></p>
",
        :library_type => "productions",
        :description => "Описание основных способов нанесения изображения на сувенирную продукцию",
        :position => 0
      
      LibraryArticle.create :title => "Тампопечать",
        :content => "<span style='font-size: xx-small;'><span style='color: rgb(0, 0, 0);'>&nbsp;</span></span>
<br>
<span style='font-size: medium;'><span style='font-size: medium;'><span style='font-size: xx-small;'><span style='font-size: x-small;'><span style='font-size: small;'><span style='font-size: medium;'><span style='font-size: large; color: rgb(0, 0, 0);'><span style='font-size: medium;'><span style='font-size: large; font-family: PragmaticaC;'><span style='font-size: medium;'><span style='font-size: medium;'>
                      <br></span></span><span style='font-size: x-small;'><span style='font-size: medium;'><span style='font-size: medium;'><span style='font-size: medium;'><span style='font-size: small;'>Принято считать, что тампонная печать является разновидностью офсетной печати и может использовать все способы нанесения изображений с применением косвенной передачи посредством тампона с печатных форм глубокой, плоской, высокой и трафаретной печати… </span></span></span>
                      <br></span><span style='font-size: medium;'>
                      <br></span><span style='font-size: small;'><span style='font-size: medium;'><span style='font-size: medium;'>Тампопечать применяют для декорирования изделий из различных материалов с неровной поверхностью или неправильной геометрической формы, например, посуды, шариковых ручек, зажигалок и т. д. </span>
                        <br>

                        <br>Принято считать, что этот способ является разновиднстью офсетной печати и может использовать все способы нанесения изображений с применением косвенной передачи посредством тампона с печатных форм глубокой, плоской, высокой и трафаретной печати. Однако чаще всего используют печатную форму с углубленными элементами изображения на плоской пластине. Именно благодаря тампону — промежуточному звену при передаче изображения — тампопечать приобретает свои достоинства, основное из которых — возможность печатать на предметах практически любой конфигурации. 
                        
                        <br>
                        <br><span style='font-size: medium;'>Печатные формы 
                          
                          <br></span></span><span style='font-size: medium;'>
                        <br>Одним из главных элементов технологического процесса тампопечати является печатная форма, качество и параметры которой во многом определяют результат печати. Как отмечено выше, наиболее широкое применение в тампопечати получили формы на плоских пластинах с углубленными печатающими элементами. Процесс печатания с таких форм предусматривает нанесение печатной краски с избытком на всю поверхность печатной формы, а затем удаление ее с пробельных элементов ракелем, как в глубокой печати. 
                        
                        <br>
                        <br>На качество печатной формы значительное влияние оказывают технология изготовления и материал, из которого она выполнена. Требования к печатным формам определяются спецификой процесса тампопечати. Наличие ракеля, скользящего по поверхности формы, требует высокой чистоты ее обработки и достаточной твердости формного материала. В настоящее время наиболее четко выражено использование двух типов форм: на металлических заготовках с высокой гладкостью и на фотополимерных пластинах. 
                        
                        <br>
                        <br>Изготовление печатных форм на металлических пластинах — весьма трудоемкий и длительный процесс. Чаще всего для изготовления печатных форм используют стальные закаленные заготовки, которые должны иметь строго параллельные плоскости, а рабочая поверхность должна полироваться до 11–12 класса чистоты. Изготовление такой пластины-заготовки доступно лишь предприятиям, имеющим инструментальные производства. В качестве материала для заготовок используют легированные стали. Для снижения стоимости формы используют более дешевые марки стали, которые никелируют или хромируют для увеличения твердости поверхности. Следует отметить, что на рынке имеются предложения специализированных фирм по поставке заготовок. 
                        
                        <br>
                        <br>Имея подготовленные в собственных условиях или приобретенные металлические пластины, приступают к подготовке печатных форм. Этот процесс включает химическое обезжиривание поверхности пластины, нанесение и сушку копировального слоя, экспонирование фотоформы, проявление и обработку копии, травление. 
                        
                        <br>

                        <br>Полученные таким образом печатные формы имеют тиражестойкость от нескольких сотен тысяч до 2–3 млн оттисков. Такую технологию применяют для воспроизведения несложных, преимущественно штриховых рисунков. 
                        
                        <br>
                        <br>Изготовление печатных форм на специальных фотополимерных пластинах — процесс более простой. Такая пластина для тампопечати состоит из светочувствительного высокогладкого и стойкого к истиранию фотополимерного слоя толщиной около 0,2 мм и стальной подложки толщиной 0,3 м. На российском рынке широко используются водо- или спиртовымываемые пластины (например, BASF). 
                        
                        <br>
                        <br>Процесс изготовления печатных форм на фотополимерных пластинах включает экспонирование, проявление (промывку), сушку и дополнительное экспонирование. Полученные таким образом печатные формы имеют тиражестойкость несколько тысяч оттисков, с их помощью могут быть воспроизведены изображения самой разной сложности, включая полутоновые многоцветные. 
                        
                        <br>
                        <br>Вне зависимости от способа изготовления печатной формы формная пластина должна иметь размеры, на 25–30 мм превышающие размеры печатаемого изображения. 
                        
                        <br>
                        <br>Тампоны 
                        
                        <br>
                        <br>Важным элементом процесса получения оттисков является тампон — упругоэластичное звено, передающее изображение с печатной формы на запечатываемую поверхность. Возможности процесса и качественные параметры отпечатка в значительной степени зависят от свойств тампона — его твердости и эластичности, способности воспринимать и отдавать краску, устойчивости к истиранию, к действию компонентов печатной краски и растворителей. Тампоны изготавливают из упругоэластичных материалов, способных восстанавливать после сжатия свою первоначальную форму без значительных остаточных деформаций. Свойства тампона играют важную роль в правильной передаче изображения. Тампон должен иметь гладкую поверхность и заданную геометрическую форму, обеспечивающую контакт с печатной формой и запечатываемой поверхностью без проскальзывания. 
                        
                        <br>

                        <br>Применяемые сегодня тампоны изготавливают из силиконовой резины. Они могут иметь самую разную конфигурацию, которая определяется формой и размерами запечатываемой поверхности. В отечественной практике на некоторых предприятиях до сих пор применяют тампоны из желатино-глицериновой массы. Такие тампоны весьма несовершенны: имеют низкую химическую устойчивость и механическую прочность, нестабильны по свойствам. Их тиражестойкость 1,5–2,0 тыс. оттисков. Тампоны из полиэфируретанов и силиконовых каучуков имеют более высокие эксплуатационные свойства: их тиражестойкость составляет несколько сот тысяч оттисков.</span></span></span></span></span></span></span></span></span></span></span></span>
",
        :library_type => "productions",
        :description => "",
        :position => 1
        
        LibraryArticle.create :title => "Что такое шелкография?",
          :content => "<span style='font-size: xx-small; color: rgb(0, 0, 0);'>Кратко о технологии шелкографии</span>
<br>

<span style='font-size: medium;'><span style='font-size: medium;' class='Apple-style-span'>
    <div>
      <br>
    </div>Ш</span><span style='font-size: small;' class='Apple-style-span'>елкографией называют способ трафаретной печати, в котором в качестве формного материала используются специальные тканевые или металлические сетки частотой 4-200 нитей/см и толщиной примерно 24-90 мкм. Обычно пробельные элементы формируют непосредственно на сетке фотохимическим способом. Для изготовления формы печати может быть использован как сухой плёночный фотослой (капиллярная плёнка), так и жидкая фотоэмульсия, высушиваемая на сетке после нанесения. В обычном состоянии фотослой смывается водой. В подавляющем большинстве случаев экспонирование проводится контактным способом. После экспонирования УФ-излучением фотослой полимеризуется и перестаёт смываться водой, за исключением участков, не подвергшихся облучению (закрытые изображением позитива). Смытые участки становятся печатающими элементами. 
    <br>Печать может проводиться практически по всем материалам — бумага, пластик, ПВХ, стекло и т. д. соответствующими красками. Краски могут различаться по типу связующего — водные, сольвентные (на основе растворителей), ультрафиолетового отверждения, пластизоли (требующие температурную фиксацию). 
    <br>Своё название «шелкография» этот способ получил из-за патента процесса трафаретной печати, выданный в 1907 году под названием англ. Silk screen printing — печать шелковым ситом. Считается, что этот способ печати возник в глубокой древности, но современный вид трафаретная печать приобрела в середине прошлого века. Благодаря особенностям технологии шелкография позволяет печатать как на плоских, так и на цилиндрических поверхностях. Сейчас трафаретная печать применяется не только в полиграфии, но и в текстильной, электронной, автомобильной, стекольной, керамической и других отраслях промышленности. 
    <br>Одной из особенностей шелкографии является возможность получать толстый красочный слой от нормальных 10-12 мкм до 500 и более (для офсета красочный слой составляет 1-2 мкм) с потрясающей укрывистостью и яркостью цвета. Также можно широко использовать спецэффекты — глиттеры (блёстки), объёмную печать, имитацию бархата или резины. 
    <br>
    <br>Виды применения шелкографии: 
    <br>
    <br></span><span style='font-weight: bold;' class='Apple-style-span'><span style='font-size: small;' class='Apple-style-span'>Малоформатная трафаретная печат</span></span><span style='font-size: small;' class='Apple-style-span'>ь - включает в себя плоскую печать на различных подложках - ПВХ, бумаге и картоне. Формат печати не превышает 100x140см. 
    <br>

    <br></span><span style='font-weight: bold;'><span style='font-size: small;' class='Apple-style-span'>Крупноформатная трафаретная печать</span></span><span style='font-size: small;' class='Apple-style-span'> - является аналогом малоформатной печати, но с плоской печатью больших форматов, превышающих 100x140см. 
    <br>
    <br></span><span style='font-weight: bold;'><span style='font-size: small;' class='Apple-style-span'>Печать на мелких предметах</span></span><span style='font-size: small;' class='Apple-style-span'> - представляет собой возможность декорирование сувенирной продукции. Для печати на круглых предметах применяются ротационные полуавтоматы. Изображение устойчиво к истиранию. 
    <br>
    <br></span><span style='font-weight: bold;'><span style='font-size: small;' class='Apple-style-span'>Текстильная печать</span></span><span style='font-size: small;' class='Apple-style-span'> (набивка тканей) - печать на ткани машинами с вращающимися цилиндрами. 
    <br>
    <br></span><span style='font-weight: bold;'><span style='font-size: small;' class='Apple-style-span'>Текстильная печать на готовых изделиях</span></span><span style='font-size: small;' class='Apple-style-span'> - это печать на готовых изделиях (футболках и мелкие вещи). Процесс печати осуществляется с помощью машин, называемых 'карусельными станками'. 
    <br>

    <br style='font-weight: bold;'></span><span style='font-weight: bold;'><span style='font-size: small;' class='Apple-style-span'>Трафаретная печать на табличках и металлах</span></span><span style='font-size: small;' class='Apple-style-span'> - печать, связанная с производством и обработкой металлов, анодированием, листовой штамповкой, травлением, обжигом и т. д. 
    <br>
    <br></span><span style='font-size: medium;'><span style='font-weight: bold;'><span style='font-size: small;' class='Apple-style-span'>Печать по стеклу</span></span><span style='font-size: small;' class='Apple-style-span'> - данный вид печати применяется в автомобильной отрасли и в производстве электробытовых приборов. Также, печать по стеклу применяется для нанесения рисунка на стеклянные изделия, например, на бутылки. 
      <br>&nbsp; 
      <br>
      <br></span><span><span style='font-size: small;' class='Apple-style-span'>взято с <a href='http://ru.wikipedia.org' target='_blank'>http://ru.wikipedia.org</a> 
        <br>
        <br></span><span><span style='font-size: small;' class='Apple-style-span'>А вот видео, где подробно показан процесс шелкографии (английский язык) &nbsp; </span></span></span><span style='font-size: small;' class='Apple-style-span'>&nbsp;</span></span></span>

<div><span style='font-size: x-small;'><span style='font-size: medium;'>
      <br><object height='344' width='425'><param name='movie' value='http://www.youtube.com/v/Ee_8IMx0uMo&amp;hl=en'></object>
      <br></span></span>
</div>
",
          :library_type => "productions",
          :description => "Кратко о технологии шелкографии ",
          :position => 2
          
    LibraryArticle.create :content => "<p>&nbsp;</p>
<p>
  <br>Открывая тему «Сувениры в директ-маркетинге» хочу сказать, что в настоящее время она становится всё более и более актуальной. Российский директ-маркетинг развивается, эра черно-белых писем в дешевых конвертах уходит. Рекламодатели понимают: для того, чтобы привлечь клиента необходимо использовать оригинальные способы; креатив нужен не только для создания телевизионного ролика, но и для создания рекламно-информационного пакета. </p>
<p>Сувениры, включаемые в директ-маркетинговые компании, благодаря своей памятной бизнес-функции, дают большой простор для творчества и фантазии. Так что в ДМ кампаниях их использование не редкость. Однако на практике у коммерсантов возникает немало проблем, когда получатель рекламного предложения оказывается весьма разочарован. Не всякий рад получить в качестве презента… кусочек шифера. А конвертик с перцем неминуемо пострадает при рассылке – и такие случаи бывали! Директ-маркетинг предъявляет к использованию сувенирной продукции свои специфические запросы. «Сюрприз» должен не только соответствовать всем требованиям Почты России в качестве почтового отправления, но и учитывать особенности упаковки при курьерской или других типах доставки. Надо уметь правильно подобрать сувенир, чтобы ценность его была адекватна ожиданиям потребителя. Кроме того, «подарок» должен быть тесно связан с идеей рекламного предложения – для этого директ-маркетинг предоставляет в ваше распоряжение все тонкости «хитрых» технологий.</p>
<p>Актуальность этой темы подтверждает и тот факт, что ко мне обратились с предложением посвятить ей доклад на выставке «Бизнес – сувениры и подарки 2004». Всех, кого интересует эта проблема, приглашаю 15 сентября посетить двухчасовой открытый семинар «Использование бизнес-сувениров в директ-маркетинговой кампании». На нем мы рассмотрим наиболее важные вопросы, касающиеся этой темы, например, как правильно подобрать сувениры, чтобы повысить привлекательность коммерческого послания, как добиться того, чтобы ваше предложение обязательно было встречено с интересом. </p>
<p>Впрочем, я думаю, что эта проблема волнует не только тех, кто планирует посетить семинар. Поэтому в этой статье я также затрону несколько других актуальных вопросов.</p>

<p>Итак, начнем с классификации рекламных сувениров. </p>
<p>Традиционно их делят на три категории: календари, мелкие изделия «с нанесением» (ручки, блокноты, папки для бумаг и т.д.) и VIP-подарки, например, часы, калькуляторы, канцелярские наборы. </p>
<p>С точки зрения директ-маркетинга предлагаю несколько иную классификацию. Разделим сувениры на группы в зависимости от целей их использования в сфере ДМ, например: </p>
<p>в акциях для потенциальны потребителей, с целью стимулирования заказа; 
  <br>в акциях «купи, заполни анкету и выиграй» - в качестве призов; 
  <br>в программах лояльности по постоянным потребителям для повышения их лояльности к бренду. 
  <br>Для работы с сувенирами подходит только два средства директ маркетинга: почтовая рассылка и курьерская доставка. Телефонный маркетинг обычно используется в дополнение к ним для повышения эффективности.</p>
<p>Сувениры, используемые в акциях для потенциальных потребителей с целью стимулирования заказа.</p>
<p>Как известно, в акциях для потенциальных потребителей рекламно-информационный пакет строится с учетом двух фактов: немедленного воздействия и долгосрочного воздействия. Последний фактор необходим, если адресат поначалу не принял решения о сотрудничестве. Практика показывает, что 20% из тех, кто не сделал заказ сразу, при наличии потребности могут сделать его спустя некоторое время.</p>
<p>Сувениры традиционно используются как фактор долгосрочного воздействия.</p>

<p>Вручение рекламного сувенира способно сразу же создать доброжелательную и благоприятную атмосферу. Получатели принимают их с благодарностью и начинают симпатизировать дарителю. 
  <br>Рекламные сувениры – вещи весьма полезные, однако их получение не накладывает на клиента каких-то обязательств. Таким образом, принимающий получает действительно полезную вещь в обмен на простое знакомство с обращением рекламодателя. 
  <br>Получатели обычно долго хранят рекламные сувениры и постоянно пользуются ими. То есть мы имеем дело с повторными рекламными контактами без особых затрат. 
  <br>Рекламные сувениры зачастую имеют предпочтительное положение по сравнению с другими средствами рекламы. Дело в том, что они могут постоянно храниться в таких местах, как карманы, бумажники, на рабочих столах, даже в спальнях, то есть в недоступных для остальной рекламы местах. 
  <br>Эффективность рекламного послания повышается, если вы не просто включаете в него сувенир, а продумываете, каким может быть дополнительный эффект, например:</p>
<p>сувенир каким-то образом обыгрывает вид деятельности вашей компании, т.е. потребитель при пользовании сувениром постоянно вспоминает, чем занимается Ваша компания; 
  <br>сувенир учитывает специфику отрасли или должности адресата, и заранее предполагается, что он станет одним из необходимых или постоянно используемых предметов; 
  <br>в коммерческом предложении объясняется, почему именно этот подарок вы хотите преподнести. 
  <br>Для долгосрочного воздействия на потребителя можно использовать карманные календарики, календарики-домики, ежедневники, еженедельники и т.п. Цена их зависит только от выбора целевой аудитории, которую можно разделить на VIP и ординарную. Так как это потенциальные потребители, они не ждут от вас очень дорогих подарков, пока они от вас вообще ничего не ждут. Поэтому у подарка должно быть всего ТРИ ОСНОВНЫЕ функции:</p>
<p>оригинальность и полезность (если вашему адресату под Новый год приходят письма, в каждом из которых календарик, совершенно очевидно, что он себе оставит только самый необычный); 
  <br>функция «присутствие в поле зрения»; 
  <br>соответствие имиджу компании. 
  <br>Однако не всегда сувенир действует только как фактор долгосрочного воздействия. Существует еще немедленное воздействия. Это предложение, которое стимулирует потенциального клиента сделать заказ СЕЙЧАС. Каким образом можно здесь использовать сувенир? В качестве образца собственной продукции! Нет, это не то, что вы подумали – одно дело вложить в письмо кусочек черепицы для того, чтобы адресат убедился в качестве того, что вы производите,и потерял его на следующий же день. Другое дело оформить его, например, в виде оригинальной настольной визитницы (два кусочка черепицы на деревянной подставке) – просто и в то же время необычно. Ну и, естественно, ваш логотип и контактные данные. </p>
<p>Другими словами, самое главное, чтобы сувенир был оригинален. Только тогда потенциальный потребитель оставит его у себя. </p>

<p>Cувениры, используемые в акциях «купи, заполни анкету и выиграй» в качестве призов.</p>
<p>В данном случае средства директ-маркетинга используются для доставки призов победителям. Здесь надо иметь в виду, что т.к. доставка обычно осуществляется почтой, необходимо проконсультироваться с ДМ-агентствами о форме упаковки. Ведь очень важно, чтобы подарок дошел до победителя без дефектов. И учитывая, что это все-таки рекламная акция, упаковка должна быть яркой и красивой. Особенно внимательно следует относиться к легко бьющимся, стеклянным предметам. В этом случае упаковка непременно должна быть противоударной.</p>
<p>Недавний пример: при рассылке кружек к очередной акции, мы столкнулись с тем, что пришлось полностью переделывать упаковку, т.к. её разработчик не учел хрупкость сувениров.</p>
<p>Сувениры, используемые в программах лояльности для постоянных потребителей в целях повышения их лояльности к брендам. </p>
<p>В этом случае особую роль играет выбор подарка, т.к. дешевым «сюрпризом» можно обидеть клиента. Если вы не доставляете сувенир с курьером, а посылаете его по почте, имейте в виду: адресату придется самому за ним идти. Представьте себе взрыв возмущения, если подарок, с точки зрения потребителя, не будет соответствовать усилиям, затраченным на его получение.</p>
<p>В заключение хотелось бы подчеркнуть: несмотря на все сложности, связанные с выбором и доставкой сувениров получателю, эта разновидность директ-маркетинга все же является одной из наиболее эффективных. Убежден, что компаниям, настроенным на успешную рекламную акцию, абсолютно необходимо изучить эту область и взять ее на вооружение.</p>
<p>&nbsp;</p>
<p>Николай Угаров 
  <br>&nbsp; 
  <br></p>
",
          :title => "Сувенирная продукция в директ-маркетинге",
          :library_type => "marketing",
          :description => "",
          :position => 0
          
    LibraryArticle.create :content => "<br>
Классические бизнес-сувениры - это, по сути, бесплатные подарки на память, которые содержат информацию о компании-дарителе, ее логотип, адрес, телефоны, ссылку на сайт в Интернете. Традиция преподносить деловым партнерам такие подарки имеет западные корни, и в развитых странах этот процесс благодаря своей многолетней истории уже давно строго регламентирован: что, кому, когда и как дарить

Для нашей страны деловые сувениры сегодня перестали быть роскошью или диковинкой, потребители быстро учатся выбирать, дарить и получать такие подарки. И если раньше, еще несколько лет назад, сувенирную продукцию со своим логотипом заказывали только самые 'продвинутые' компании, то теперь к специалистам от 'сувенирки' обращаются клиенты самого разного уровня.

Основным производителем и потребителем сувенирной продукции в мире были и остаются США. В России же первые поставщики и производители бизнес-сувениров появились около 10-12 лет назад, однако массовый интерес к рекламе подобного рода возник лишь несколько лет назад, одной из таких компаний является компания 'Омикс'. При этом первыми к рекламно-сувенирной продукции обратились компании, ориентированные на работу с клиентом: салоны красоты, сетевые магазины, банки, страховые компании, рестораны, спортивные клубы, телекоммуникационные компании, туристические фирмы.

Традиционный бум на рынке сувенирной продукции начинается в преддверии новогодних праздников. Поздравление с Новым годом является, пожалуй, одним из наиболее удобных способов совместить приятное с полезным: преподнести партнерам подарок и ненавязчиво напомнить о себе. В последний месяц года у фирм, изготавливающих сувенирную и печатную продукцию с нанесением логотипа предприятия, как правило, заказы увеличиваются примерно вдвое. Соответственно, производители рекомендуют клиентам озаботиться вопросом подготовки новогодних подарков если не летом, то, по крайней мере, ранней осенью, особенно если в планах значится разработка оригинальных предложений.

Последние данные
Сувенирная продукция относится к сегменту так называемых имиджевых услуг и является частью рекламного рынка в целом, занимая, по разным оценкам, около 10% от его объема. В современной России 'сувенирка' уже выделилась в самостоятельную отрасль, этим видом бизнеса заняты тысячи компаний, различных по своей специализации, а также по размеру и структуре производства. Специалисты оценивают ежегодный объем российского рынка рекламно-сувенирной продукции приблизительно в 200 млн долл., однако называть более определенные цифры никто не решается, так как жесткой статистики в этой области пока не ведется. Несмотря на бурный рост сувенирного рынка в России, зафиксированный в последние несколько лет (после кризиса), в ближайшее десятилетие нам вряд ли удастся приблизиться к аналогичным показателям развитых стран Европы и тем более США. Эксперты в области рекламы считают, что ежегодный прирост объемов реализации российского сувенирного рынка составляет около 20%, у ряда компаний этот показатель достигает 40%. Таким образом, при сохранении существующих темпов приблизительно к 2012 г. его объем может превысить 1 млрд долл.

С географической точки зрения наиболее значительная часть 'сувенирки' так или иначе сконцентрирована в Москве - около 70%, - а также в крупных промышленных центрах России. И в ближайшие годы эта ситуация вряд ли претерпит существенные изменения, однако на региональном уровне за последние годы также зафиксирован значительный рост объемов 'сувенирки'.

Рынок сувенирной продукции в России еще очень молод, заказчики пока консервативны, технологий и производителей немного, но все же перспектива развития, безусловно, есть. Если раньше большинство клиентов довольствовалось стандартными предложениями (ручки, брелоки, блокноты и календари, к примеру), то теперь многие интересуются страной-производителем, спрашивают, будет ли меняться стержень, больше внимания потребители стали уделять и дорогостоящей продукции. Специалисты в области 'сувенирки' говорят, что иногда, бывает, и на 'Паркер' нанесение логотипа заказывают. Хотя, в принципе, согласно классическим канонам сувенирного дела, подарки партнерам класса VIP не следует назойливо маркировать фирменной символикой - это считается дурным вкусом. Лучше подобрать соответствующую упаковку с логотипом или выполненную в фирменных цветах. Не следует также увлекаться ширпотребом, ведь в ситуации, когда опыт потребителей растет, некачественная сувенирная продукция, даже низкой стоимости, уже вряд ли найдет своего клиента.Мировой опыт

Рынок рекламно-сувенирной продукции в развитых странах мира имеет уже достаточно давние, сложившиеся традиции и занимает существенную долю рекламного рынка в целом. Однако в последние годы специалисты отмечают довольно серьезную стагнацию - объемы 'сувенирки' в Центральной Европе балансируют приблизительно на одном и том же уровне, а в США вот уже несколько лет ежегодно сокращаются на 10-15%. Вместе с тем на сегодняшний день объем рекламно-сувенирного рынка во Франции составляет, по разным оценкам, около 750 млн долл., в Германии - 4 млрд долл., в Италии - около 1 млрд долл., в Норвегии и Польше этот рынок имеет суммарный оборот в размере около 300 млн долл. В США до событий 11 сентября 2001 г. рынок рекламно-сувенирной продукции оценивался приблизительно в 20 млрд долл. В то время как Россия и страны Восточной Европы имеют действительно высокие перспективы роста, отмечают эксперты.

Кто есть кто на российском рынке?
По разным оценкам, на российском рынке 'сувенирки' работают около 2000 компаний, при этом около 600 из них являются специализированными. Так что рынок сувенирной продукции будет расти. Операторы считают, что в этот бизнес могут свободно прийти еще несколько компаний, места хватит всем. В принципе, входной барьер здесь достаточно низкий. С одной стороны, конкуренция на рынке большая, однако некоторые эксперты полагают, что этим можно пренебречь, поскольку в результате каждая компания идет в своем направлении, имеет разное оборудование и т. д. Можно условно выделить три типа сувенирных фирм.

Первый - это компании, поставляющие сувениры по каталогам зарубежных производителей. Там действительно можно найти очень многое, однако предложение все равно ограничено рамками каталога. Вместе с тем недостатком в данном случае является, в первую очередь, привязка к тиражу, к длительности поставок, к таможенному оформлению. Кроме того, при кажущемся богатстве выбора заказчику часто все же не удается обнаружить в каталоге продукцию, которая отвечала бы всем его запросам.

Второй тип - это компании, которые занимаются производством сувенирной продукции, и здесь необходимо отметить, что число подобных фирм невелико. Как правило, это художественные или ремесленные мастерские, переросшие в коммерческие предприятия. Качество продукции у них, как правило, высокое, а иногда и высочайшее, так как это практически авторские работы. Специально под клиента можно разработать фирменный эксклюзивный дизайн, изготовить сигнальный образец. Однако ваш выбор при этом все равно будет ограничен техническими возможностями конкретного производителя, да и авторские работы на поток не поставишь.

Чтобы облегчить себе жизнь, при заказе сувенирной продукции, многие фирмы предпочитают наиболее популярную и удобную форму выбора корпоративных подарков - интернет-каталог сувенирной продукции. В этой области наиболее известным и содержательным является популярный интернет-каталог <a href='http://www.egifts.ru/.' target='_blank'>http://www.egifts.ru/.</a> Одним из направлений интернет-каталога является поставка сувенирной продукции под заказ по каталогам 'Gifts', 'ITD','ARCO', 'Promotion Tops' и др.

Также встречаются компании (и это, пожалуй, наиболее малочисленная группа), которые ориентированы именно на эксклюзивный подход к запросам заказчика. То есть одна компания выполняет весь спектр работ для клиента: от анализа идеи и разработки дизайна сувенира до воплощения этого дизайна в тираж изделий с использованием комбинаций материалов. Однако и заказчики, требующие настолько индивидуального подхода, не так уж часто встречаются. Промо-продукция из низшего ценового сегмента: папки, ручки, брелоки, футболки и так далее - необходима всем и остается стабильно востребованной. Но и высокие профессионалы, такие как, например, художественные мастерские 'Калежа' (литье из латуни), 'Вель-Русская бронза' (сувениры из бронзы), 'VIM division' (изделия из дерева), 'Дигор' (сувениры и бизнес-аксессуары из натуральной кожи), без работы в обозримом будущем вряд ли останутся.

Следует также отметить, что около 80% российской сувенирной продукции изготавливается за пределами страны, в частности, в азиатских странах. Российские компании в большинстве своем предпочитают ограничиться лишь услугами по нанесению фирменной символики. Исключение составляют фирмы, занимающиеся производством оригинальной продукции.

Технологии
Существует достаточно много различных технологий нанесения символики на сувенирную продукцию. Выбор того или иного способа зависит в первую очередь от самого предмета, его предназначения, а также тиража.

Шелкография
Суть данной технологии заключается в продавливании краски через мелкоячеистую сетку по определенному трафарету. За один прокат можно нанести одну краску. Используется для нанесения изображения на плоские, реже цилиндрические поверхности, при тиражах, превышающих 50 экземпляров. При этом размер изображения ограничен размером сетки.

Предметы: таблички, указатели, пиктограммы, бейджи, дипломы, плоские сувениры и т. п.

Плюсы: идентичность изделий в одном тираже, низкая себестоимость при больших тиражах.

Минусы: длительный подготовительный процесс до печати, подходят только гладкие поверхности, при малых тиражах себестоимость слишком высока.

Тампопечать
Используется для печати по плоским и криволинейным поверхностям при тиражах от 50 экземпляров. Технология основана на перенесении краски с помощью клише через эластичный силиконовый тампон, повторяющий кривизну поверхности. Размер изображения ограничен величиной тампона и клише.

Предметы: бейджи, ручки, брелоки, посуда, инструменты, таблички, сувениры.

Плюсы: те же, что и при шелкографии, а также возможность печати по криволинейным поверхностям.

Минусы: те же, что при использовании шелкографии.

Металлофото
Технология основана на нанесении анодно-окисного металлографического покрытия на алюминиевые сплавы специальных марок. Оптическое разрешение печати 10000 dpi, что позволяет размещать микротекст (как способ защиты). Максимальный размер наносимого изображения зависит от возможностей фотовывода.

Предметы: таблички и т. п. изделия, приборные панели, значки.

Плюсы: довольно низкая стоимость при больших тиражах, очень высокая стойкость к агрессивным средам, полная идентичность всех изделий в тираже, высокое разрешение печати.

Минусы: ограниченный набор цветов для технологии (черный, синий, красный, зеленый).

Гравертон (Grawerton)
В основе технологии лежит термоперенос изображения на специально подготовленные пластины из анодированного алюминия через промежуточный носитель. Носителем служит обычная бумага, на которой печатается изображение с помощью обычного лазерного принтера. При этом картридж принтера заправляется специальным тонером, который под воздействием температуры и давления сублимируется в поры алюминия. Положительным моментом является возможность изготовления единичных экземпляров, а весь процесс укладывается в 5-10 минут. Также возможно нанесение полноцветного изображения. Стандартные цвета - черный, синий, зеленый, красный.

Предметы: таблички и т. п. изделия, приборные панели, значки, медали, дипломы, часы.

Плюсы: возможность изготовления единичных экземпляров, персонализация изделий (например, бейджи, адресные папки, сувениры), относительно низкая стоимость единичных изделий при высокой скорости изготовления небольших (до 500 шт.) тиражей.

Минусы: изделия не рекомендуется использовать на улице из-за невысокой устойчивости тонера к воздействию ультрафиолетового излучения (при прямом попадании солнечных лучей на изделие изображение исчезает за 3 месяца).

Химическое травление
Используется для нанесения изображения на медные сплавы (латунь, медь и т. д.), а также дюралюминий и нержавеющую сталь. Травление производится парами кислоты по нанесенному на пластину трафарету. После травления изображение заполняется эмалью или специальными компаундами. Используется для изготовления единичных либо малотиражных предметов, так как идентичность изделий при большом тираже трудно достижима. Размер нанесения ограничен размером металлической пластины.

Плюсы: презентабельный вид готового предмета, изделия пригодны для наружного применения, возможность реставрации вместо полной замены.

Минусы: очень трудоемкий процесс изготовления, включающий большое количество операций, высокая стоимость изделия, небольшие тиражи, длительное время изготовления, требуется постоянный уход за изделиями (при наружном применении).

Механическая гравировка и фрезеровка
Для использования данной технологии необходимо наличие механического устройства. Фреза или бор, повторяя определенный контур, оставляют в металле борозду. Размер обрабатываемого изделия, как правило, ограничен размером рабочего поля станка. Возможна обработка практически любых видов материалов.

Предметы: спектр изделий очень велик даже для рекламной деятельности - от табличек и шильдов, объемных букв и дипломов до трехмерных форм, используемых при вакуумной формовке.

Плюсы: высокая технологичность обработки материалов, изготовление как единичных, так и многотиражных изделий, огромный спектр обрабатываемых материалов, нанесенное изображение не подвержено истиранию.

Минусы: изображение должно быть подготовлено специальным образом; в некоторых случаях необходимо применение программирования, что сильно влияет на стоимость изготовления единичных изделий; невысокая скорость нанесения при использовании сложных изображений, высокая стоимость оборудования.

Лазерная гравировка
Различают два типа лазерных установок: газовые CO2-лазеры и твердотельные. В рекламно-сувенирной продукции в основном используются CO2-лазеры, которые позволяют наносить изображение практически на любой материал: дерево, пластики, кожа, стекло органическое и оптическое, крашеные и никелированные металлы. При наличии устройства для гравировки цилиндрических поверхностей возможно нанесение изображения по всей окружности: например, на бокалы, кружки и ручки.

Плюсы: высокая технологичность обработки материалов, изготовление как единичных, так и многотиражных изделий, огромный спектр обрабатываемых материалов.

Минусы: те же, что и в случае с механической гравировкой.

Массовая продукция
Самый массовый вид фирменных подарков - это так называемые промо-сувениры. Их дарят на выставках, презентациях, при поздравлении партнеров или собственных сотрудников, при этом стоимость таких изделий редко превышает 10 долларов. Как правило, это канцелярские принадлежности - ручки, ежедневники, записные книжки с символикой компании. Они формируют позитивное отношение к фирме, причем, по мнению специалистов, зачастую 'работают' гораздо лучше рекламных листовок и буклетов. Рекомендуется все же периодически пополнять ассортимент промо-сувениров, ведь с течением времени однообразие может повлиять на эффективность воздействия, тогда как мелкие приятные новинки всегда привлекают внимание. Среди интересных предложений можно отметить, в частности, мягкие тапочки с логотипом 'Аэрофлота', которые дарят пассажирам первого и бизнес-класса. McDonald`s вместе с набором Happy Meal дарит своим клиентам небольшие детские игрушки, ассортимент которых меняется с появлением очередных новинок мировой детской мультипликации. Красную кружку от Nescafe получает каждый, кто пришлет несколько этикеток от кофейных банок.

Бизнес-сувениры (корпоративные)
Следующая категория корпоративных сувениров - так называемые адресные сувениры стоимостью от 10 до 50 долларов, которые предназначены в основном для деловых партнеров и постоянных клиентов. Таким презентом могут стать ручки престижной марки, зажигалки, кожаные аксессуары, письменные приборы, часы. На эти сувениры также обязательно наносится символика компании-дарителя. Кроме того, в последнее время популярным новогодним и рождественским сувениром стала бутылка спиртного, этикетку которой украшает корпоративная символика. Корпоративный сувенир в обязательном порядке становится значимой частью стиля компании. Однако специалисты по-разному оценивают эффективность сувениров этой категории. Все они сходятся во мнении, что в данном случае необходимо уметь обходить банальные решения в оформлении корпоративных сувениров. Например, если логотип фирмы-дарителя будет расположен не на стенках предмета, а на дне, предположим, вазы или пепельницы, то у этого сувенира больше шансов найти место в доме или в офисе партнера. Так, например, удачное решение дизайна корпоративного сувенира принадлежит компании 'ЮКОС'. К десятилетию компании была изготовлена записная книжка из венецианской бумаги в кожаном переплете, упакованная в коробочку фирменных цветов с логотипом в виде сургучной печати.

Сувениры для VIP-клиентов
Следующая категория корпоративных сувениров - так называемые адресные сувениры стоимостью от 10 до 50 долларов, которые предназначены в основном для деловых партнеров и постоянных клиентов. Таким презентом могут стать ручки престижной марки, зажигалки, кожаные аксессуары, письменные приборы, часы. На эти сувениры также обязательно наносится символика компании-дарителя. Кроме того, в последнее время популярным новогодним и рождественским сувениром стала бутылка спиртного, этикетку которой украшает корпоративная символика. Корпоративный сувенир в обязательном порядке становится значимой частью стиля компании. Однако специалисты по-разному оценивают эффективность сувениров этой категории. Все они сходятся во мнении, что в данном случае необходимо уметь обходить банальные решения в оформлении корпоративных сувениров. Например, если логотип фирмы-дарителя будет расположен не на стенках предмета, а на дне, предположим, вазы или пепельницы, то у этого сувенира больше шансов найти место в доме или в офисе партнера. Так, например, удачное решение дизайна корпоративного сувенира принадлежит компании 'ЮКОС'. К десятилетию компании была изготовлена записная книжка из венецианской бумаги в кожаном переплете, упакованная в коробочку фирменных цветов с логотипом в виде сургучной печати.

Оригинальные предложения
Несмотря на кажущееся изобилие предложений, на рынке корпоративных бизнес-сувениров действительно оригинальных идей встречается не так уж много. Одним из последних нестандартных предложений стали, например, деревянные игры и головоломки. Эксперты отмечают, что пик популярности того или иного оригинального сувенира редко длится больше года, после этого любителям эксклюзивности приходится искать новые подходы, так как то, что вчера считалось оригинальным, сегодня становится массовым. И если год-два назад хитом рынка бизнес-сувениров были разнообразные релаксаторы, то сегодня популярностью пользуется радиотехника, CD и диски МР3.

Тенденции
Разумеется, выбор того или иного вида сувенирной продукции зависит в первую очередь от рекламного бюджета компании. При этом если раньше российские компании траты на 'сувенирку' планировали по остаточному принципу, то теперь эта статья рекламных расходов зачастую вписывается в бюджет отдельной строкой.

Одной из самых популярных и актуальных групп промо и бизнес-сувениров являются часы с логотипом заказчика на циферблате или корпусе. Такой сувенир всегда будет уместным и стильным подарком. Новинки часов под нанесение логотипа всегда можно найти в специализированном интернет-салоне <a href='http://www.chasovik.ru/.' target='_blank'>http://www.chasovik.ru/.</a> Стоимость часов в зависимости от модели колеблется от $ 1 до $ 5000.

Традиционно самый большой объем продаж при сравнительно низкой цене приходится на промо-сувениры. Однако специалисты отмечают, что около 20% сегодняшних клиентов предпочитают эксклюзивную продукцию.

Производство сувениров не стоит на месте: ежегодно меняется ассортимент ежедневников на 80%, ручек - примерно на 70%, отмечают операторы рынка. Также от года к году меняются пристрастия клиентов - так, в последнее время стало модным наносить фирменный логотип на офисные часы. Однако исключительно новые, оригинальные виды все же появляются достаточно редко. В целом мода на печатную продукцию особенно не меняется, существуют определенные устоявшиеся представления о красоте и стиле.

Мода на сувенирно-рекламную продукцию в основном диктуется европейскими выставками производителей сувениров, которые проходят в европейских столицах практически ежемесячно. Что касается российской моды на те или иные бизнес-сувениры, то единой картины нет, отмечают участники рынка. Если в Москве тенденции еще как-то прослеживаются, то в Санкт-Петербурге, по словам представителей питерских рекламных агентств, моде не следуют. А на периферию новинки вообще доходят с опозданием в два-три года.

 

Источник: RBC.ru
",
          :title => "Специфика рынка рекламно-сувенирной продукции",
          :library_type => "marketing",
          :description => "",
          :position => 1
          
    LibraryArticle.create :content => "<br>
<p><span style='font-size: small;'>&nbsp;</span></p>
<p><span style='font-size: small;'>&nbsp;</span></p>
<p><span style='font-size: small;'>Получать подарки приятно. Дарить -- приятно вдвойне, ибо радость осчастливленного накладывается на осознание собственного скромного благородства. Покупка подарка обычно предшествует походу в гости. Стоя у витрины магазина, невольно приходится вспоминать увлечения пригласивших, обстановку и стиль квартиры (кстати, а из чьего сервиза я разбила чашку?), манеру одеваться… Индивидуальный подход и оригинальность -- здесь главное.</span></p>
<p><span style='font-size: small;'>С бизнес-сувенирами дело почему-то до сих пор обстоит иначе. Список традиционных предметов, используемых для фирменной 'нашлепки', не так уж велик: ручки, карандаши, блокноты, реже брелоки. Вещи, конечно, полезные, только уж очень скучные. Любой подарок выражает в первую очередь отношение, во вторую -- нашу неповторимость. А о какой неповторимости можно говорить, когда люди обмениваются одинаковыми ручками, только с разной символикой? А может быть, надо немного подумать?</span></p>
<p><span style='font-size: small;'>Не стоит забывать о том, что необходимым условием достижения успеха является визуализация информации, удобство ее донесения, возможность повторного обращения и использования. Охота за клиентом приобрела новые формы. Сегодня 'сюрпризерный' мейнстрим протекает в новом русле: заявить о себе по-новому, может быть, аккуратно и ненавязчиво, а может быть, и эпатажно. Главное -- завладеть эмоциями. Счет идет на секунды. Чтобы добиться желаемых действий от целевой аудитории, предложение подают так, чтобы оно принималось за собственное. Тогда обратная связь обеспечена, эмоциональное взаимодействие налажено. Удивлять, но не СВОЕЙ эрудицией, а ЕГО смышленостью.</span></p>
<p><span style='font-size: small;'>Нет ничего, на что бы ни дерзнуло воображение человека 
  
    <br>Тит Лукреций Кар</span></p>

<p><span style='font-size: small;'>Казалось бы, пресыщенную рекламой публику уже не удивить: все средства давно изобретены. Ан нет -- дух творчества живет и побеждает. То, что происходит, не пришло бы в голову самым изощренным фантастам. Кто бы мог подумать лет десять назад, что, например, рекламные щиты столь быстро 'поумнеют' и будут менять изображение в зависимости от настроения, расовой принадлежности, пристрастий, наклонностей. Что 'НЛО' будут называть не инопланетный корабль, а бесплатные рекламные открытки. Что упаковка научится кричать и ерзать при приближении покупателя. Что никакие комнаты психологической разгрузки в фирмах не нужны, потому что можно просто съесть своего шефа… в виде портрета на плитке корпоративного шоколада или, еще лучше, в полный рост в кремово-бисквитно-мороженом торте.</span></p>
<p><span style='font-size: small;'>На сегодняшний день бытует предрассудок о том, что обладательница параметров 90--60--90 имеет идеальную фигуру. Однако, проведя исследования, ученые выяснили, что эталон вовсе таковым не является: мужчины предпочитают жениться на пухленьких (и даже флиртовать с ними!), к продолжению рода остроколенные дивы приспособлены хуже и т. д. В рекламном мире ситуация складывается подобным же образом. Большую пользу приносят кампании, выходящие за рамки общепринятых норм. Какие-то ляпы, ошибки порой становятся настоящими открытиями, превращаются в ноу-хау и способствуют продвижению торговой марки, так как лучше запоминаются.</span></p>
<p><span style='font-size: small;'>Любое знакомство начинается с обмена информацией. Каждый пытается сначала представить себя в роли интервьюера и определить, насколько полезным будет дальнейшее взаимодействие. Следующий этап -- вызвать заинтересованность собственной персоной. Как правило, первая встреча носит чисто ознакомительный характер. Связующим звеном между первой и второй встречей служит визитная карточка с указанными на ней телефонами, почтовым адресом, e-mail, адресом сайта. А если разговор происходил на бегу, визитка потерялась, мощной артиллерии в виде каталогов и буклетов под рукой не оказалось?</span></p>
<p><span style='font-size: small;'>Оптимальным решением в данной ситуации могут стать CD-визитки. Уж они-то не перекочуют так просто в мусорную корзину, не затеряются в кармане. Их применяют фирмы, желающие солидно и с претензией на оригинальность представить свой бизнес. Возможностей открывается масса. На диске, имеющем размеры обычной визитки, можно записать любую информацию -- от прайс-листа и каталога продукции до корпоративного сайта со сложной навигацией. Мало? Закажите музыкальный презентационный диск, запишите на него обращение к народу. Да, собственно, можно и фильм о себе любимом туда закатать (в том числе мультипликационный). Удивлять так удивлять.</span></p>
<p><span style='font-size: small;'>Свое победное шествие 'от Москвы до самых до окраин' CD-визитки начали два года назад, претерпев с тех пор значительные метаморфозы. В настоящий момент используют четыре базовые формы: классическую, классическую увеличенную, закругленную, квадратную. Все новое -- хорошо забытое старое. Реклама на спичках, предлагаемая сейчас как новая технология, конечно, таковой не является. Просто кто-то умный и достаточно предприимчивый вовремя вспомнил спичечные коробки своего детства. Раньше здесь размещали уменьшенные копии агитационных плакатов о преимуществе 'нашего' образа жизни над 'ихним', о вреде пьянства, о джентльменском наборе молодежи на всесоюзные стройки, изредка -- портреты деятелей науки и искусства. Эту славную традицию очень успешно подхватили и возродили питерцы. Именно они стали производить наборы спичек европейского стандарта, являющиеся скорее сувениром, а не просто средством для добывания огня. Ручная сборка, индивидуальный дизайн, отличное качество. Яркий пример того, как товар, будучи носителем рекламы, трансформируется в сувенирную продукцию. Кстати, спички по сегодняшним понятиям -- вещь стильная, намного опередившая и газово-пластмассовые, и бензиново-металлические пошлости. Еще одно интересное новшество, уже из Москвы, -- реклама на пачках сигарет. Об этичности такой рекламы предоставим заботиться МАПу, но задумка довольно оригинальная. Способом продвижения послужили вредные привычки населения. </span></p>
<p><span style='font-size: small;'>Несмотря на предупреждения Минздрава и призывы позаботиться о здоровье, отказываются от табака очень вяло. Так что спрос родил предложение. И еще какое! Фирма, получившая эксклюзивное право на данный вид рекламы на территории России, стала активно производить сигареты под торговыми марками заказчиков. Заказчику предоставляется возможность выбора цветового оформления, сорта табака. Сигареты могут быть любой ценовой категории: от 'Примы' до 'Парламента'. Постепенно такие сигареты становятся незаменимыми при проведении широкомасштабных акций -- рекламе организации, персон, продвижении продукта. (Представляете себе, например, кубинские сигары 'ЛУКОЙЛ' с правом раскуривания на автозаправках?.. Шутка.) </span></p>
<p><span style='font-size: small;'>Люди не знают, чего хотят, до тех пор, пока им это не предложат 
  
    <br>Теренс Конран</span></p>
<p><span style='font-size: small;'>Еще одна новинка, с которой пришлось столкнуться, -- подача информации о фирме с помощью рекламных аудиоклипов в режиме удержания телефонной линии. 
  
    <br>В развитых странах более 90 процентов компаний используют режим удержания на своих телефонах в рекламных целях. Вы звоните в офис, чтобы уточнить полученные данные, а вместо коротких гудков или 'ждите ответа' вам отвечает профессиональный диктор хорошо поставленным голосом и информирует вас о товарах и услугах компании. При желании голос можно наложить на музыкальный фон, и тогда сообщение получит вид профессионального аудиоклипа. Новинка обещает быть востребованной в малом и среднем бизнесе.</span></p>

<p><span style='font-size: small;'>На Западе необычайно популярны бесплатные телефонные линии. Единственное неудобство -- в разговор через определенные промежутки времени врывается аудиореклама. Сообщения могут не совпадать в данный момент с тематикой разговора, вашим настроением. Вы можете жаловаться другу, что вас только что укусил соседский броненосец, и услышать в этот момент об услугах парикмахерской для животных. Но дареному коню (в смысле бесплатному телефону) в зубы не смотрят… 
  
    <br>Как бы мы ни ненавидели вездесущие щупальца рекламы (по-грамотному -- ее экстенсивное распространение), ни пытались переключать кнопки телевизора, обходить стороной билборды, выкидывать флаеры и 'Экстры', реклама -- красивое животное. За ней интересно наблюдать. Особенно когда она выкидывает занятные коленца. </span></p>
<p><span style='font-size: small;'>P. S. А вот еще находка из числа последних. Московские власти планируют разгрузить центр столицы от рекламы. В связи с этим основной объем ее перекочует на канализационные люки в периферийные районы. 
  
    <br>Нет пределов совершенству! </span></p>
<p><span style='font-size: small;'>&nbsp;</span></p>
<p><span style='font-size: small;'>Инна Маслова заместитель главного редактора журнала 
  
    <br>'Рекламодатель: теория и практика'</span></p>
<p><span style='font-size: small;'>
    <br></span></p>
",
          :title => "33 современных способа выкинуть рекламное коленце",
          :library_type => "marketing",
          :description => "",
          :position => 2
    LibraryArticle.create :content => "<p>&nbsp;</p>
<p>
  <br>Не секрет, что профессионалам в области бизнес-сувениров очень часто приходится сталкиваться с ситуацией, когда клиент не знает, что же конкретно выбрать в качестве подарка для своих заказчиков, партнеров, персонала и т.п. И зачастую, чтобы не 'ломать' голову, многие идут проторенным путем - дарят стандартные подарки. </p>
<p>Вот отрывок из разговора с одним руководителем достаточно крупной автомобильной фирмы: </p>
<p>'Вышел на работу после Нового года и обнаружил 5 ежедневников и 6 календарей! Это мне все надарили партнеры моей фирмы. Честно говоря, надоели эти однотипные подарки - и девать некуда, и выбросить - рука не поднимается! Лежат и только место занимают! Хотя, если честно, и сам не раз формально подходил к выбору сувениров для своих клиентов. Хотелось бы узнать, как же правильно подобрать бизнес-сувенир?' </p>
<p>Вам знакома такая ситуация? Вы не хотите в ней оказаться и тем более не хотите, чтобы в ней оказались ваши партнеры? </p>

<p>Этого легко избежать, если у вас есть желание и три золотых правила 'под рукой'! </p>
<p>- во-первых, заказывать сувенирную продукцию необходимо заранее! Особенно это актуально перед новогодними праздниками (здесь оптимальным можно считать срок 2-3 месяца). Это позволит подобрать что-то оригинальное, связанное либо со сферой деятельностью компании, либо с функциональностью подарка. Вы, конечно, можете и пренебречь этим советом, но тогда очень велика вероятность того, что, обратившись в рекламное агентство, вам придется выбирать из стандартного ассортимента! 
  <br>Например, радиокомпания 'Компас' только благодаря заранее оставленному заказу смогла вовремя получить сувениры в виде компасов со своей символикой. </p>
<p>- во-вторых, необходимо четко определить целевые группы, которым предназначены подарки. Такой очевидный принцип, но, тем не менее, им часто пренебрегают и закупают сувенирную продукцию единую для всех своих клиентов и партнеров. Стоит ли говорить о реакции некурящей женщины, которой дарят зажигалку или портсигар! Или о реакции руководителя компании, когда он получает в подарок папку из кожзаменителя, которую он тут же отдает своему водителю! 
  <br>Не забывайте классику: 'Дитям - мороженое, бабе - цветы!' </p>
<p>- в-третьих, выбор тех или иных сувениров зависит от события, к которому они и предназначаются (участие компании на выставке, поздравление клиентов с Новым Годом, своих сотрудников с юбилеем фирмы и т.д.) </p>
<p>Разбивка на группы может происходить по многим критериям, перечислим основные из них: </p>
<p>по статусу получателя подарка. Если вы хотите преподнести подарок большому боссу или человеку, у которого 'все есть', то подарок должен быть очень дорогим. Это может быть что-то типа ручки Montegrappa, высокохудожественных изделий (скульптуры из металла, камня или хрусталя, ювелирные изделия). Но иногда делать дорогой подарок не совсем уместно, вот тогда-то надо попытаться найти что-то необычное, 'мульку' может быть что-то с юмором. Вот тогда ваш подарок будет замечен! 
  <br>Например, необычным подарком является гонг 'Поющий ветер' (см. рис. 1). 
  <br>Ваша компания представляет на рынке несколько брэндов? Вы занимаетесь разными видами страхования? Вы хотите донести до получателя подарка преимущества своего продукта или компании? Тогда этот сувенир то, что вам нужно! 
  <br>по профессиональным интересам. Здесь актуальны, так называемые, практичные сувениры, которые могут использоваться при рабочем процессе, а также сувениры-символы 
  <br>по личным интересам. Например, один из постоянных клиентов компании 'Ренессанс Колледж' обратился с просьбой подобрать подарки для одной из своих компаний-партнеров. Зная, что клиент и его партнер регулярно встречаются на футбольном поле за дружеским матчем, один из наших менеджеров предложил как один из вариантов фирменную футбольную форму для команды фирмы-партнера. Предложение было с радостью принято и, по отзывам, имело большой успех, 
  <br>в зависимости от того, мужская или женская у вас аудитория. Одна из фармакологических компаний интересно подошла к выбору подарков для заведующих аптеками (как правило, это замужние дамы), с которыми она сотрудничает. Рассматривались следующие варианты подарков: наборы кухонных принадлежностей из дерева, наборы садовых инструментов для работы в саду, шелковые платки. 
  <br>На сайте сувенирной продукции{www.kaleidoscope.ru} среди новинок можно найти мужской подарок 'Последний герой', который вызывает приятные воспоминания об 'особенностях национальной рыбалки' у сильной половины человечества 
  <br>по назначению (подарки для использования в офисе или во время досуга). Например, при подготовке к летнему сезону один из автосалонов предлагал покупателям автомобилей семейного класса в качестве подарка корзину для пикника. А для покупателей автомобилей представительского класса - офисный настольный набор - ручка в виде автомобильного рычага переключателя скоростей. Это только некоторые из возможных подходов при выборе сувениров. Выбор за вами! 
  <br>Автор:Ирина Гришина, начальник отдела маркетинга компании 'Ренессанс Колледж' 
  <br>&nbsp; 
  <br></p>
",
          :title => "Как грамотно подобрать бизнес-сувенир",
          :library_type => "marketing",
          :description => "",
          :position => 3
    LibraryArticle.create :content => "<p><img alt='' src='/images/0811_13_vas1_00.jpg' border='0' height='211'
           width='434'></p>

<p>Сегодня речь пойдёт о технологии создания подделок известных марок. На сегодняшний день ею владеет примерно столько же людей - сколько создают массовое производство оригинальных брендов. В логистических цепочках поддельных вещей задействовано не меньше специалистов отрасли чем в легальных с точки зрения пост-капиталлистической морали бизнесе. Хотя порою некоторые звенья производства и доставки не подозревают о том для каких клиентов они 'клепают' и грузят.</p>
<p>На сегодняшний день промышленным центром производства подделок является всё ещё Китай. С ним не могут сравниться ни Вьетнам ни Турция вместе взятые.</p>
<p>Немного о технологии создания поддельных товаров: 
  <br>В провинции Джедзян есть один город - ИУ. В нём трудятся многие представители мини фабрик-семей, расположенных в районе этого города. Большинство этих людей работает на рынке в центре города- одном из самых крупных в стране. 
  <br>Фабрики- семьи являются самым эфективным оружеим Брендовых Пиратов. Эти семьи объединяются для того чтобы шпионить на главных площадках где разертывается игра понтов тех, кого уже обрекли на копирование агенты. Места где показываются все новые коллекции известны всем - столицы Европы и Америки в первую очередь.Там то и работают тайные агенты фейка.</p>
<p><img alt='' src='/images/0811_13_vas1_02.jpg' border='0' height='640' width='400'>&nbsp; 
  <br>Это могут быть нанятые европейцы или живущие в столицах Китайцы. Всё, что им нужно - это просто ходить по улицам и смотреть - кто во что одет. Что висит на витринах к грядущему сезону. 
  <br>Вот тут то и начинается самое интересное!</p>
<p>Как только они покупают образцы того что они посчитали интересным - сразу переправляют в Китай. 
  <br>Посылка идёт 2 дня. Получают её опытные специалисты, которые уже обладают полной информацией о том, что они получили для копирования. 
  <br>Материал, Фурнитура и для первых образцов подготавливаются по описанию. 
  <br>Вообще-то. Любой китайский рабочий может сшить футболку за 15 минут. и даже быстрее.</p>

<p>После того как образец готов- семья садится за работу и отшивает не более 300 штук каждой позиции и даже порой по 50 штук. 
  <br>Это количество легко помещается в большой чемодан и нет необходимости ждать пока приплывёт контейнер. Первой партии хвататает чтобы выяснить тенденции спроса на копии брендовых вещей. Как только тест закончен принимается решение об отшиве глобальной партии целых коллекций. </p>
<p><img alt='' src='/images/0811_13_vas1_03.jpg' border='0' height='375' width='500'>
  <br>В этом случае фабрики-семьи объединяются под крылом одного или группы самых влиятельных контрафактчиков и начинают отшив. Как только производство готово в дело вступают транспортники - по факту легальные в Китае- склады и транспортные компании. Не надо долго себе думать как товар поедет по всем миру - только контарбандным путём.&nbsp; 
  <br><img alt='' src='/images/0811_13_vas1_04.jpg' border='0' height='480' width='434'>&nbsp;</p>
<p><img alt='' src='/images/0811_13_vas1_01.jpg' border='0' height='405' width='540'>&nbsp;
  <br></p>
<p>Written by Василь</p><u><span style='font-size: x-small; color: rgb(0, 0, 255);'>
    <p>www.street-style.ru</p></span></u>
",
          :title => "Феномен китайских подделок",
          :library_type => "marketing",
          :description => "",
          :position => 4

    LibraryArticle.create :content => "<span style='font-size: medium;'>Бижутерия и аксессуары как элементы рекламы 
  <br>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Значки, зажигалки, ручки и другие бизнес-сувениры нужно рассматривать двояко: как элемент рекламы, в частности, как инструмент имиджевой рекламы, несущий логотип, товарный знак и фирменные реквизиты, и как элемент public relations, но об этом речь пойдет позднее. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Итак, несомненно бизнес-сувениры позволяют точно направить действие рекламы на целевую аудиторию и достичь большой продолжительности действия. И устроить это довольно просто. Подойдет любой информационный повод: юбилей фирмы-рекламодателя или фирмы-адресата, презентация, выставка. Такой повод используют чтобы вручить милый пустячек ( e.g. брелок для ключей ) секретарю, затем — полезную в офисном обиходе вещь ( e.g. набор маркеров ) — начальнику отдела, и наконец, набор элегантных аксессуаров ( значек, заколка для галстука и запонки ) — руководителю. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Все эти предметы-рекламоносители будут длительное время находиться в поле зрения сотрудников и руководства фирмы, как целевой группы, напоминая о самом существовании рекламируемого товара лучше, чем изложенные на бумаге данные, подшитые в папку, пылящуюся в шкафу. Более того, сам факт дарения будет создавать благоприятный имидж фирмы-рекламодателя и позитивное позиционирование предлагаемого товара. 
  <br>
  <br>Восприятие аксессуаров, как элементов 
  <br>знаковой системы адресной группой 
  <br>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Именно на этом этапе бизнес-сувениры и аксессуары переходят из разряда только рекламоносителей в разряд атрибутов public relations. Происходит это потому, что такие предметы, как значки и галстучные заколки, по сути дела являющиеся бижутерией, но уже несущие некий символ, логотип, переходят в разряд элементов знаковой системы. Также непременным атрибутом этой знаковой системы является то, что эти предметы выпущены определенным, ограниченным тиражом. Это определяет создание некой ограниченной группы обладателей элементов такой знаковой системы. Сам факт наличия какой-либо ограниченной группы не может не влиять на сознание как ее участников, так и наблюдателей, воспринимающих знаковую систему. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Человеческое общество представляет собой сочетание различных слоев и корпораций. И каждый член этого общества сознательно и интуитивно стремится соотнести себя с определенной его частью — корпорацией, партией, кланом. Это достигается выбором определенного стиля одежды, собственной внешности, аксессуаров, поведения, то есть — созданием имиджа. А использование определенных аксессуаров, таких как значек, заколка для галстука, является наиболее простым и очевидным способом создания имиджа. То, что человек носит какой-либо значек на лацкане пиджака, заколку для галстука или запонки с определенной символикой, сразу бросается в глаза и относит человека к определенной корпорации, говорит о его положении в обществе. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Такой процесс определения положения в обществе какого-либо лица происходит для наблюдателя практически неосознанно, инстинктивно. Тем более важен сам факт наличия во внешнем облике человека таких символов, определяющих имидж. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Этот процесс имеет и обратную сторону. Речь идет именно об использовании аксессуаров в качестве подарков, бизнес-сувениров. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Сам акт вручения таких аксессуаров в качестве подарка воспринимается не просто как выражение внимания, уважения или благодарности. Получение в качестве подарка определенных аксессуаров означает признание соответствующего положения в обществе, принадлежности к некой корпорации, либо как акт приобщения к такой корпорации. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Несомненно положительные эмоции, собственные ощущения, связанные с получением такого подарка запомнятся надолго. Это послужит одной из важных составных частей создания благоприятной атмосферы для налаживания деловых контактов. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Таким образом бизнес-сувениры и аксессуары совершенно очевидно используются именно как элемент public relations, создания необходимого климата для делового сотрудничества. 
  <br>

  <br>Качество, оформление и техника 
  <br>изготовления значков и аксессуаров 
  <br>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Здесь речь может идти только об аксессуарах особо высоко качества. Причем можно говорить и о качестве изготовления этих аксессуаров, и о дизайнерском исполнении. Логотип фирмы или товарный знак должен использоваться в оформлении значка, галстучной заколки гармонично, со вкусом, с применением оригинального дизайнерского решения. Это послужит залогом того, что подарок будет воспринят адекватно, как содержащий именно то послание, о котором говорилось выше. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; В обратном случае бизнес-сувениры будут восприняты не более чем акт внимания, который вскоре забудется. Сами же аксессуары скорее всего так и не будут извлечены из подарочной упаковки, которая затеряется в недрах стола среди бумаг и мелочей. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Сразу оговоримся, что значки из пластмассы или тонкой жести с монохромным, максимум — трехцветным текстом или символикой, нанесенным, например, тампопечатью, не будут рассматриваться, как неподходящие для бизнес-сувениров. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Высококачественные значки и шильды — накладки с символикой для запонок и галстучных заколок изготавливаются из стали, меди, бронзы и других сплавов на медной основе. Высокая пластичность этих материалов в сочетании с прочностью позволяют достичь тонкой деталировки, прочности поверхности, лучшего соединения с эмалевым покрытием и долговечности изделия в целом. Кроме того, в сравнении с алюминиевыми сплавами достигается значительно больший вес изделия, что также влияет на его свойства, проще говоря: значек приятно взять в руку, он создает впечатление чего-то почти драгоценного. Разница в стоимости алюминиевого и латунного, стального и т.д. значков незначительна. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Для достижения большего внешнего эффекта металлическая поверхность покрывается напылением различных типов. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Так, для имитации золотой поверхности на стали и медных сплавах используется настоящее золото, для серебра — никель и хром. Такое покрытие не теряет своих свойств, т.е. не тускнеет и не осыпается на протяжении более чем пяти лет. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Серебряное и золотое имитирующие покрытия используются, как правило, в сочетании с цветными эмалями. Если использование эмалей не предусматривается, то более выигрышно смотрится металл с матовой поверхностью, имитацией медного покрытия или эффектом 'старения'. Наиболее популярные варианты имитирующих покрытий для значков и шильд без эмалей это 'матовое золото', 'медь', 'античная бронза' и 'античная медь'. Представить себе покрытия с эффектом 'старения', то есть 'античная медь' и 'античная бронза', очень просто: взгляните на дореволюционную копейку и на советский пятак. Такие эффекты также весьма стойки и долговечны. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Эффект 'старения' придает изделиям ауру благородства, аристократизма, верности традициям. Можно даже порекомендовать эту технологию к использованию при изготовлении значков для учебных заведений, юридических и финансовых учреждений. В свою очередь эффект 'матового золота' имеет прямую ссылку на передовые технологии, динамизм и современность. Это покрытие будет хорошо восприниматься на значках предприятий, объектом продаж которых, является компьютерная и сложная бытовая техника. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Но более часто изображение на значках и шильдах делается многоцветным, повторяющим фирменные цвета и сочетания цветов. Для изображения цветных рисунков используются различные типы эмалей: так называемые 'холодные', то есть имеющие органическую, синтетическую основу, и 'горячие', то есть представляющие собой стекловидную массу, или смальту. Современные технологии позволяют достичь полного соответствия с заказанным цветом и совпадения со шкалой Pantone. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; При применении в изготовлении значков и шильд эмалей каждый цвет должен иметь границу — металлический бортик, выступающий над поверхностью значка. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'Холодная' эмаль заполняет отведенное место тонким слоем, немного не доходя до края бортика. Для защиты поверхности 'холодной' эмали и улучшения внешних качеств применяют защитное покрытие на основе высокомолекулярных смол. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'Горячая' эмаль более вязкая, заполняет свой резервуар полностью, затем полируется и не нуждается в защитном покрытии. В целом 'холодная' эмаль имеет более эстетичный вид, но, в силу присущих ей свойств, не позволяет добиться особенно тонкой деталировки. Для получения тонких деталей в изображении применяют особый способ изготовления штампа: фототравление. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Для того, чтобы добиться высокой деталировки и при этом избежать появления металлических границ между цветами, применяют способ нанесения изображения офсетом, с последующим защитным покрытием высокомолекулярными смолами. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Нужно отметить, что для лучшего соединения металлической поверхностью с эмалями и офсетным слоем применяют особые связующие вещества — адгезивы. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Часто заказчик просит изготовить значек ажурным, повторяющим монограмму или какой-либо замысловатый узор. Такая обработка изделий осуществляется с применением лазерной техники, при этом изделие становится существенно дороже, но производимый им внешний эффект стоит того. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Несколько слов о способах крепления значков. Для значков 'клубного' формата ( до 22 мм в поперечнике) обычно применяется цанговая застежка ('бабочка') и простая булавка. Эти виды креплений также могут применяться и на значках более крупного формата, но чаще в этом случае используют 'английскую' булавку или винтовой крепление. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Заколки для галстуков изготавливают с обычной клипсой разных модификаций, а также с усиленным цанговым креплением с цепочкой для фиксации в петельке сорочки. 
  <br>

  <br>Стоимость и сроки изготовления значков. 
  <br>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; В России значки и аксессуары высокого качества изготавливают на импортном оборудовании, как правило, английского производства. Значительную часть исходных материалов и компонентов ( например крепление ) также приходится закупать за границей. Этот факт ставит стоимость изготовления значков и аксессуаров в достаточно сильную зависимость от курса иностранной валюты. При этом каждый значек — изделие эксклюзивное, авторское. Поэтому сделать обобщенный обзор цены и сроков изготовления таких изделий довольно трудно. Технология изготовления определяется специалистами, от этого и зависит и цена изделия. Также необходимо учитывать оплату работы художников и дизайнеров, если эти специалисты привлекались к созданию макета изделия со стороны. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Возьмем самый распространенный пример: значек клубного формата, диаметром 18 мм, тираж — 1000 шт. При изготовлении такого значка методом штамповки с применением 'холодной' эмали его цена составит 0,6-0,75 у.е за единицу. При использовании 'горячей' эмали — 1,1-1,3 у.е. Такой же значек с офсетным изображением обойдется дешевле — 0,5-0,6 у.е., но, как правило, изготовители неохотно идут на создание этим способом тиражей менее 2000 экземпляров. Применение защитного покрытия, имитирующих покрытий, различных способов крепления влияет на стоимость незначительно. Если использовать тот же значек в качестве шильды для крепления к галстучной заколке, то цена готового изделия, по сравнению с простым значком, возрастет на 1,2-1,5 у.е. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Изготовление ажурных значков с применением лазера сделает изделие дороже примерно на 2 у.е. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; И, наконец, о сроках изготовления. Как это не парадоксально, изготовление малых тиражей значков ( около 300 экз. ) занимает большее время, чем изготовление больших тиражей. Это связано с тем, что в этих случаях применяются разные типы оборудования, имеющие свои особенности наладки и изготовления штампов. Но в целом можно говорить о сроках изготовления партии значков или галстучных заколок за 2 недели - 1 месяц. Дополнительная обработка с применением лазерной техники добавит к сроку изготовления еще 1-2 недели. Так что, если необходимо изготовить значки к юбилею, презентации, выставке или другой конкретной дате, нужно позаботиться о значках заранее. 
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Резюмируя все вышесказанное, можно смело утверждать, что использование в рекламных кампаниях, на презентациях и PR акциях значков и других высококачественных аксессуаров в силу их относительно небольшой стоимости наверняка не нанесет серьезного финансового урона фирме-рекламодателю. В то же время вряд ли найдется столь же действенный инструмент для создания благоприятного имиджа и поддержания высокого реноме предприятия, что обязательно скажется на отношениях с партнерами и клиентами. 
  <br>
  <br>&nbsp; 
  <br>

  <br>из журнала 'Рекламные технологии' 
  <br>
  <br>
  <br>
  <br></span>",
          :title => "Сувенирная продукция как элемент рекламы",
          :library_type => "marketing",
          :description => "",
          :position => 5
  end

  def self.down
    drop_table :library_articles
  end
end
