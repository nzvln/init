import UIKit

/* 1) Создайте перечисление DayOfWeek, членами которого будут являться дни недели. У каждого члена должно быть связанное целочисленное значение. указывающее на его порядковый номер
 2) В составе перечисления создайте проваливающийся (failable) инициализатор, который принимает на вход название дня недели на русском языке и возвращает соответсвующий член перечисления
 В случае, если передано некорректное значение, необходимо вернуть nil
 3) Создайте переменную с использованием данного инициализатора */
enum DayOfWeek: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
    init? (_ day: String) {
        switch day {
        case "понедельник":
            self = .monday
        case "вторник":
            self = .tuesday
        case "среда":
            self = .wednesday
        case "четверг":
            self = .thursday
        case "пятница":
            self = .friday
        case "суббота":
            self = .saturday
        case "воскресенье":
            self = .sunday
        default:
            return nil
    }
}
}
var dayOfWeek = DayOfWeek("понедельник")
dayOfWeek!.rawValue
