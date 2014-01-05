ActiveAdmin.register BudgetBallot do
  filter :budget_ballot_area_id

  index do
    # ...
    # name
    column :budget_ballot_area_id
    column :id
    translation_status
    column :price
    column :link
    column :idea_id

    # ...
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :price
      f.input :link
      f.input :idea_id
    end

    f.translated_inputs "Translated fields" do |t|
      t.input :name
      t.input :description
    end

    f.actions
    # ...
  end
end
