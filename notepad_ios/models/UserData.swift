// 厦门大学计算机专业 | 前华为工程师
// 专注《零基础学编程系列》  http://lblbc.cn/blog
// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
// 公众号：蓝不蓝编程

import Combine

final class UserData: ObservableObject {
    let objectWillChange = PassthroughSubject<UserData,Never>()
    var notes = NoteData.shared.notes{
        didSet{
            objectWillChange.send(self)
            NoteData.shared.notes = notes
        }
    }
}
