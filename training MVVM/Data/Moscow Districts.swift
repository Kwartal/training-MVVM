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
            Area(imageName: "Богородское", name: "Богородское"),
            Area(imageName: "Вешняки", name: "Вешняки"),
            Area(imageName: "Восточный", name: "Восточный"),
            Area(imageName: "Гольяново", name: "Гольяново"),
            Area(imageName: "Ивановское", name: "Ивановское"),
            Area(imageName: "Измайлово", name: "Измайлово"),
            Area(imageName: "Косино-Ухтомский", name: "Косино-Ухтомский"),
            Area(imageName: "Метрогородок", name: "Метрогородок"),
            Area(imageName: "Новогиреево", name: "Новогиреево"),
            Area(imageName: "Новокосино", name: "Новокосино"),
            Area(imageName: "Перово", name: "Перово"),
            Area(imageName: "Преображенское", name: "Преображенское"),
            Area(imageName: "Соколиная гора", name: "Соколиная гора"),
            Area(imageName: "Сокольники", name: "Сокольники")
        ]),
        
        District(name: "ЮВАО", areas: [
            Area(imageName: "Выхино-Жулебино", name: "Выхино-Жулебино"),
            Area(imageName: "Капотня", name: "Капотня"),
            Area(imageName: "Кузьминки", name: "Кузьминки"),
            Area(imageName: "Лефортово", name: "Лефортово"),
            Area(imageName: "Люблино", name: "Люблино"),
            Area(imageName: "Марьино", name: "Марьино"),
            Area(imageName: "Некрасовка", name: "Некрасовка"),
            Area(imageName: "Нижегородский", name: "Нижегородский"),
            Area(imageName: "Печатники", name: "Печатники"),
            Area(imageName: "Рязанский", name: "Рязанский"),
            Area(imageName: "Текстильщики", name: "Текстильщики"),
            Area(imageName: "Южнопортовый", name: "Южнопортовый")
        ]),
        
        District(name: "ЮАО", areas: [
            Area(imageName: "Восточное Бирюлёво", name: "Восточное Бирюлёво"),
            Area(imageName: "Западное Бирюлёво", name: "Западное Бирюлёво"),
            Area(imageName: "Братеево", name: "Братеево"),
            Area(imageName: "Даниловский", name: "Даниловский"),
            Area(imageName: "Донской", name: "Донской"),
            Area(imageName: "Зябликово", name: "Зябликово"),
            Area(imageName: "Москворечье-Сабурово", name: "Москворечье-Сабурово"),
            Area(imageName: "Нагатино-Садовники", name: "Нагатино-Садовники"),
            Area(imageName: "Нагатинский затон", name: "Нагатинский затон"),
            Area(imageName: "Нагорный", name: "Нагорный"),
            Area(imageName: "Орехово-Борисово", name: "Орехово-Борисово"),
            Area(imageName: "Царицыно", name: "Царицыно"),
            Area(imageName: "Северное Чертаново", name: "Северное Чертаново"),
            Area(imageName: "Центральное Чертаново", name: "Центральное Чертаново"),
            Area(imageName: "Южное Чертаново", name: "Южное Чертаново")
        ]),
        District(name: "ЮЗАО", areas: [
            Area(imageName: "Академический", name: "Академический"),
            Area(imageName: "Северное Бутово", name: "Северное Бутово"),
            Area(imageName: "Южное Бутово", name: "Южное Бутово"),
            Area(imageName: "Гагаринский", name: "Гагаринский"),
            Area(imageName: "Зюзино", name: "Зюзино"),
            Area(imageName: "Коньково", name: "Коньково"),
            Area(imageName: "Котловка", name: "Котловка"),
            Area(imageName: "Ломоносовский", name: "Ломоносовский"),
            Area(imageName: "Обручевский", name: "Обручевский"),
            Area(imageName: "Тёплый Стан", name: "Тёплый Стан"),
            Area(imageName: "Черёмушки", name: "Черёмушки"),
            Area(imageName: "Ясенево", name: "Ясенево")
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
