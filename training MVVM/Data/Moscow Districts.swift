//
//  Moscow Disctricts.swift
//  training MVVM
//
//  Created by Богдан Баринов on 28.10.2022.
//

import Foundation

struct Moscow {
    
    static let districts =
    [
        District(name: "ЦАО", areas: [
            Area(imageName: "Арбат", name: "Арбат"),
            Area(imageName: "Басманный", name: "Басманный"),
            Area(imageName: "Замоскворечье", name: "Замоскворечье"),
            Area(imageName: "Красносельский", name: "Красносельский"),
            Area(imageName: "Мещанский район", name: "Мещанский район"),
            Area(imageName: "Пресненский район", name: "Пресненский район"),
            Area(imageName: "Таганский район", name: "Таганский район"),
            Area(imageName: "Тверской район", name: "Тверской район"),
            Area(imageName: "Хамовники", name: "Хамовники"),
            Area(imageName: "Якиманка", name: "Якиманка")
        ]),
        
        District(name: "САО", areas: [
            Area(imageName: "Аэропорт", name: "Аэропорт"),
            Area(imageName: "Беговой", name: "Беговой"),
            Area(imageName: "Бескудниковский", name: "Бескудниковский"),
            Area(imageName: "Войковский", name: "Войковский"),
            Area(imageName: "Головинский", name: "Головинский"),
            Area(imageName: "Восточное Дегунино", name: "Восточное Дегунино"),
            Area(imageName: "Западное Дегунино", name: "Западное Дегунино"),
            Area(imageName: "Дмитровский", name: "Дмитровский"),
            Area(imageName: "Коптево", name: "Коптево"),
            Area(imageName: "Левобережный", name: "Левобережный"),
            Area(imageName: "Молжаниновский", name: "Молжаниновский"),
            Area(imageName: "Савёловский", name: "Савёловский"),
            Area(imageName: "Сокол", name: "Сокол"),
            Area(imageName: "Тимирязевский", name: "Тимирязевский"),
            Area(imageName: "Ховрино", name: "Ховрино"),
            Area(imageName: "Хорошёвский", name: "Хорошёвский")
        ]),
        
        District(name: "СВАО", areas: [
            Area(imageName: "Алексеевский", name: "Алексеевский"),
            Area(imageName: "Алтуфьевский", name: "Алтуфьевский"),
            Area(imageName: "Бабушкинский", name: "Бабушкинский"),
            Area(imageName: "Бибирево", name: "Бибирево"),
            Area(imageName: "Бутырский", name: "Бутырский"),
            Area(imageName: "Лианозово", name: "Лианозово"),
            Area(imageName: "Лосиноостровский", name: "Лосиноостровский"),
            Area(imageName: "Марфино", name: "Марфино"),
            Area(imageName: "Марьина роща", name: "Марьина роща"),
            Area(imageName: "Медведково", name: "Медведково"),
            Area(imageName: "Останкинский", name: "Останкинский"),
            Area(imageName: "Отрадное", name: "Отрадное"),
            Area(imageName: "Ростокино", name: "Ростокино"),
            Area(imageName: "Свиблово", name: "Свиблово"),
            Area(imageName: "Северный", name: "Северный"),
            Area(imageName: "Ярославский", name: "Ярославский")
        ]),
        
        District(name: "ВАО", areas: [
            Area(imageName: "", name: "Богородское"),
            Area(imageName: "", name: "Вешняки"),
            Area(imageName: "", name: "Восточный"),
            Area(imageName: "", name: "Гольяново"),
            Area(imageName: "", name: "Ивановское"),
            Area(imageName: "", name: "Измайлово"),
            Area(imageName: "", name: "Косино-Ухтомский"),
            Area(imageName: "", name: "Метрогородок"),
            Area(imageName: "", name: "Новогиреево"),
            Area(imageName: "", name: "Новокосино"),
            Area(imageName: "", name: "Перово"),
            Area(imageName: "", name: "Преображенское"),
            Area(imageName: "", name: "Соколиная гора"),
            Area(imageName: "", name: "Сокольники")
        ]),
        
        District(name: "ЮВАО", areas: [
            Area(imageName: "", name: "Выхино-Жулебино"),
            Area(imageName: "", name: "Капотня"),
            Area(imageName: "", name: "Кузьминки"),
            Area(imageName: "", name: "Лефортово"),
            Area(imageName: "", name: "Люблино"),
            Area(imageName: "", name: "Марьино"),
            Area(imageName: "", name: "Некрасовка"),
            Area(imageName: "", name: "Нижегородский"),
            Area(imageName: "", name: "Печатники"),
            Area(imageName: "", name: "Рязанский"),
            Area(imageName: "", name: "Текстильщики"),
            Area(imageName: "", name: "Южнопортовый")
        ]),
        
        District(name: "ЮАО", areas: [
            Area(imageName: "", name: "Восточное Бирюлёво"),
            Area(imageName: "", name: "Западное Бирюлёво"),
            Area(imageName: "", name: "Братеево"),
            Area(imageName: "", name: "Даниловский"),
            Area(imageName: "", name: "Донской"),
            Area(imageName: "", name: "Зябликово"),
            Area(imageName: "", name: "Москворечье-Сабурово"),
            Area(imageName: "", name: "Нагатино-Садовники"),
            Area(imageName: "", name: "Нагатинский затон"),
            Area(imageName: "", name: "Нагорный"),
            Area(imageName: "", name: "Орехово-Борисово"),
            Area(imageName: "", name: "Царицыно"),
            Area(imageName: "", name: "Северное Чертаново"),
            Area(imageName: "", name: "Центральное Чертаново"),
            Area(imageName: "", name: "Чертаново")
        ]),
        District(name: "ЮЗАО", areas: [
            Area(imageName: "", name: "Академический"),
            Area(imageName: "", name: "Северное Бутово"),
            Area(imageName: "", name: "Южное Бутово"),
            Area(imageName: "", name: "Гагаринский"),
            Area(imageName: "", name: "Зюзино"),
            Area(imageName: "", name: "Коньково"),
            Area(imageName: "", name: "Котловка"),
            Area(imageName: "", name: "Ломоносовский"),
            Area(imageName: "", name: "Обручевский"),
            Area(imageName: "", name: "Тёплый Стан"),
            Area(imageName: "", name: "Черёмушки"),
            Area(imageName: "", name: "Ясенево")
        ]),
        District(name: "ЗАО", areas: [
            Area(imageName: "", name: "Внуково"),
            Area(imageName: "", name: "Дорогомилово"),
            Area(imageName: "", name: "Крылатское"),
            Area(imageName: "", name: "Кунцево"),
            Area(imageName: "", name: "Можайский"),
            Area(imageName: "", name: "Ново-Переделкино"),
            Area(imageName: "", name: "Очаково-Матвеевское"),
            Area(imageName: "", name: "Проспект Вернадского"),
            Area(imageName: "", name: "Раменки"),
            Area(imageName: "", name: "Солнцево"),
            Area(imageName: "", name: "Тропарёво-Никулино"),
            Area(imageName: "", name: "Филёвский парк"),
            Area(imageName: "", name: "Фили-Давыдково")
        ]),
        District(name: "СЗАО", areas: [
            Area(imageName: "", name: "Куркино"),
            Area(imageName: "", name: "Митино"),
            Area(imageName: "", name: "Покровское-Стрешнево"),
            Area(imageName: "", name: "Строгино"),
            Area(imageName: "", name: "Северное Тушино"),
            Area(imageName: "", name: "Южное Тушино"),
            Area(imageName: "", name: "Хорошёво-Мневники"),
            Area(imageName: "", name: "Щукино")
        ])]
}
