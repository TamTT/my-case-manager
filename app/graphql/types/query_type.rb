module Types
  # class QueryType < Types::BaseObject
  #   # Add root-level fields here.
  #   # They will be entry points for queries on your schema.
  #
  #   # TODO: remove me
  #   field :test_field, String, null: false,
  #     description: "An example field added by the generator"
  #   def test_field
  #     "Hello World!"
  #   end
  #
  #   field :customer do
  #     type Types::CustomerType
  #     argument :id, !types.ID
  #     description "Find a customer by ID"
  #     resolve ->(obj, args, ctx) {
  #       Customer.find_by(id: args[:id])
  #     }
  #   end
  #
  # end
  #
  class Types::QueryType < Types::BaseObject
    description "root query"

    field :cases, [CaseType], null: true do
      description "gets all cases"
    end

    field :case, CaseType, null: true do
      description "gets case based on id"
      argument :id, ID, required: true
    end

    field :contacts, [ContactType], null: true do
      description "gets all contacts"
    end

    field :contact, ContactType, null: true do
      description "gets all contacts"
      argument :id, ID, required: true
    end


    def cases
      Case.all
    end

    def case(id:)
      Case.find(id)
    end

    def contacts
      Contact.all
    end

    def contact(id:)
      Contact.find(id)
    end

  end
end
