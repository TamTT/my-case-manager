#TODO DELETE WHEN DONE:
# How to get ALL contacts
# {
#     contacts{
#       id
#       email
#       firstName
#     }
# }
#
# How to get ONE contact
# {
#     contact(id:1){
#       id
#       email
#       firstName
#     }
# }
#
class ContactType < GraphQL::Schema::Object
  field :id, ID, null: true
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :case_role, String, null: true
  field :email, String, null: true
end
