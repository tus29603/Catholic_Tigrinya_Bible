import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Daily Verse")
                    .font(.title)
                    .padding()

                NavigationLink(destination: BibleTextView()) {
                    Text("Read Bible")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink(destination: SearchView()) {
                    Text("Search")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                NavigationLink(destination: BookmarksView()) {
                    Text("Bookmarks")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                Spacer()
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: SettingsView()) {
                Image(systemName: "gear")
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
