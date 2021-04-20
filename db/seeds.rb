# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kind.destroy_all
Category.destroy_all
Bookmark.destroy_all

Kind.create(
    [
        { name: "Album" },
        { name: "MiniAlbum" },
        { name: "DVD" }
    ]
)
Category.create(
    [
        { name: "Solo", private: false },
        { name: "Group", private: false },
        { name: "SubUnit", private: false }
    ]
)
Category.create(
    [
        { name: "Big Bang", private: false, category_id: Category.find_by(name: "Group").id },
        { name: "GD", private: false, category_id: Category.find_by(name: "Solo").id },
        { name: "GD&TOP", private: false, category_id: Category.find_by(name: "SubUnit").id }
    ]
)
Bookmark.create(
    [
        { title: "Since 2007", url:"https://www.youtube.com/watch?v=G_17rLUOB2w", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Group").id },
        { title: "Always", url:"https://www.youtube.com/watch?v=-wT40BD7cRg", kind_id: Kind.find_by(name: "MiniAlbum").id, category_id: Category.find_by(name: "Group").id },
        { title: "For The World (Japanese Version)", url:"https://www.youtube.com/watch?v=x0Em5deGB0s", kind_id: Kind.find_by(name: "MiniAlbum").id, category_id: Category.find_by(name: "Group").id },
        { title: "With U (Japanese Version)", url:"https://www.youtube.com/watch?v=FzRX52HWbzs", kind_id: Kind.find_by(name: "MiniAlbum").id, category_id: Category.find_by(name: "Group").id },
        { title: "Stand Up", url:"https://www.youtube.com/watch?v=gNdDHGne8NQ", kind_id: Kind.find_by(name: "MiniAlbum").id, category_id: Category.find_by(name: "Group").id },
        { title: "Number 1 (Japanese Version)", url:"https://www.youtube.com/watch?v=uMYTn91_iBY", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Group").id },
        { title: "GD&TOP", url:"https://www.youtube.com/watch?v=-CFoZ-DJZ3c&list=PLgA8PQBu3V3Y1WNRWx1eTiLzPVSwpppjP", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "SubUnit").id },
        { title: "Hot Issue", url:"https://www.youtube.com/watch?v=AMwRI_1LCMA", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Group").id },
        { title: "Alive", url:"https://www.youtube.com/watch?v=C7OMJ7HCqfI&list=PLGzOvdJ1wrMlwFWTn2MPBZKvg5r9UcnXG", kind_id: Kind.find_by(name: "MiniAlbum").id, category_id: Category.find_by(name: "Group").id },
        { title: "Still Alive", url:"https://www.youtube.com/watch?v=HY8G_hsuhDs&list=PLQKREHx6FTVUtmEs59qM4mSA8Zpub-xGh", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Group").id },
        { title: "Tonight (Special Edition)", url:"youtube.com/watch?v=xeS-ipZfwW0", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Group").id },
        { title: "MADE", url:"https://www.youtube.com/watch?v=6w_JgUlXvXM", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Group").id },
        { title: "Heartbreaker", url:"https://www.youtube.com/watch?v=ur85D5WBDGs&list=PL25ABEFB0D37CEE4C", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Solo").id },
        { title: "Coup d'Etat", url:"youtube.com/watch?v=xhMdiGhDuNw&list=PLgA8PQBu3V3Z-8YGp_TpqhpXnom3xMRvQ", kind_id: Kind.find_by(name: "Album").id, category_id: Category.find_by(name: "Solo").id },
        { title: "Kwon Ji Yong", url:"https://www.youtube.com/watch?v=x0DFvFKeNjA&list=PLrNn7YbEdN1GrtjUe94iSdvRhvTFF9N0G", kind_id: Kind.find_by(name: "MiniAlbum").id, category_id: Category.find_by(name: "Solo").id },
        { title: "MADE: THE MOVIE", url:"https://www.youtube.com/watch?v=xI1QEMLyjgk", kind_id: Kind.find_by(name: "DVD").id, category_id: Category.find_by(name: "Group").id },
        { title: "Act III: Motte", url:"https://www.youtube.com/watch?v=Agbq6hzfxb0", kind_id: Kind.find_by(name: "DVD").id, category_id: Category.find_by(name: "Solo").id },
        { title: "Run, BIGBANG Scout!", url:"https://www.youtube.com/watch?v=E8Qonb3UHLE", kind_id: Kind.find_by(name: "DVD").id, category_id: Category.find_by(name: "Group").id },
        { title: "[白夜 | WHITE NIGHT]", url:"https://www.youtube.com/watch?v=ON8z51lNYt8&list=PLgyxPQqhtaiupiKQPHdbhO3CVwGFrPy46&index=9", kind_id: Kind.find_by(name: "DVD").id, category_id: Category.find_by(name: "Solo").id },
        { title: "ALIVE: Around the World", url:"https://www.youtube.com/watch?v=WZw8Ii6Ry0I", kind_id: Kind.find_by(name: "DVD").id, category_id: Category.find_by(name: "Group").id }
    ]
)