//
//  ListNAvigationView.swift
//  SwiftUIst
//
//  Created by 정다산 on 10/31/23.
//

import SwiftUI

//동적 리스트
// - 리스트 표시할 데이터는 Identifiable 프로토콜을 따라야 한다.
// - id 프로퍼티 필수 : 각 항목을 고유하게 식별하는데 사용
// - Hashable 프로토콜을 따르는 모든 스위프트 타입이나 커스텀 타입이 커스텀 타입이 가능(자료구조종 하나로 유일한 값을 갖게 하겠다)
// - UUID() 메서드는 각 항목마다 고유한 ID를 자동으로 생성하는데 사용
struct ToDoItem : Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
    
    
}

struct ListNAvigationView30: View {
    
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Take out the trash" , imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick uo the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
    ]
    @State private var toggleStatus = true
    @State private var stackPath = NavigationPath()
    
    
    var body: some View {
        //가장 단순한 형태의 List 표현
        //셀(Cell)에 포함된 하나 이상 뷰의 각 행을 수직 방향의 목록의 정보를 표현
        //리스트 구분자 및 행 수정 p.300
        Text("\(stackPath.count)")
        
        List{
            Text("Wash the car")
                .listRowSeparator(.hidden)
            Text("Vacuum house")
                .listRowSeparatorTint(.green)
            Text("Pick up kids from school bus @ 3pm")
                .listRowSeparatorTint(.red)
            Text("Auction the kids on eBay")
                .listRowBackground(Image(systemName: "circle"))
            Text("Order Pizza for dinner")
            
          
        }
        NavigationStack(path: $stackPath){
            //path: 몇겹의 리스트가 쌓였는지
            //클릭을 할때마다 스택에 기록이 남겨짐
            //리스트 셀은 여러 컴포넌트를 조합하여 셀에 표시할 수 있다
            List(listData){ item in
                NavigationLink(value: item.task){
                    //value : 다른화면에 넘겨줄 고유 값
                    HStack{
                        Image(systemName: item.imageName)
                        Text(item.task)
                    }
                }
                
            }//list, //list에 destination추가
                //for : String.self 클릭 될때 고유값을 String인 자신으로 받겠다
                // 그 받아온걸 인자로 사용
            .navigationDestination(for: String.self){ task in
                Text("Selected task = \(task)")
            }
        }
        
        NavigationStack{
            // 동적 리스트 ForEach 사용 예
            List {
                Section(header: Text("Setting")){
                    
                    Toggle(isOn:$toggleStatus ){
                        Text("Allow Notifications")
                    }
                }//sec
                
                // 값 타입별 내비게이션
                NavigationLink(value: listData.count){
                    Text("View Task Count")
                }
                
                
                
                ForEach(listData){ item in
                    NavigationLink(value: item.task){
                        HStack{
                            Image(systemName: item.imageName)
                            Text(item.task)
                        }
                    }
                  //데이터 소스에서 항목을 삭제하는 코드
                }.onDelete(perform: { indexSet in
                    // 데이터 소스에서 항목을 삭제하는 코드 p.310
                    print("\(indexSet)")
//                        for index in indexSet {
//                            listData.remove(at: index)
//                        }
                    listData.remove(atOffsets: indexSet)
                    print(listData)
                })
                .onMove(perform: { indices, newOffset in
                    //항목을 재배열하는 코드 p
                })
            }//list
            .navigationTitle("To Do List")//Nav타이틀 추가
            .navigationBarItems(trailing: Button(action:{print("press navi button")},label: {Text("Hello")}))
            
            
            //navigation 목적지 추가
            .navigationDestination(for: Int.self){
                Text("\($0)")
            }
            .navigationDestination(for: String.self){task in
                Text(task)
            }
            .refreshable {//새로고침 동작을 추가
                listData = [
                    ToDoItem(task: "Order dinner" , imageName: "dollarsign.circle.fill"),
                    ToDoItem(task: "Call financial advisor", imageName: "phone.fill"),
                    ToDoItem(task: "Sell the kids", imageName: "person.2.fill")
                ]
            }
        }//navStack
        
    }
}

#Preview {
    ListNAvigationView30()
}
