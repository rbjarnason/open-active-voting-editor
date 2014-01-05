ActiveAdmin.register BudgetBallotArea do
  index do
    # ...
   # name
    column :id
    translation_status
    column :budget_amount
    # ...
    default_actions
  end

  form do |f|
    f.inputs "Budget" do
      f.input :budget_amount
    end

    f.translated_inputs "Translated fields" do |t|
      t.input :name
    end

    f.actions
    # ...
  end
end
