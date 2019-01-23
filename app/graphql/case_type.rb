#TODO: DELETE WHEN DONE:
# How to get ALL cases
# {
#     cases{
#       id
#       title
#       courtDate
#     }
# }

# How to get ONE case
# {
#     case(id:1){
#     id
#     title
#     courtDate
#     }
# }

class CaseType < GraphQL::Schema::Object
  field :id, ID, null: true
  field :title, String, null: true
  field :description, String, null: true
  field :value, Integer, null: true
  field :court_date, GraphQL::Types::ISO8601DateTime, null: true
end
