class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string    :name
    end

    Habit.create(name: 'weight')

    create_table :habit_logs do |t|
      t.string    :habit
      t.timestamp :label
      t.string    :value
      t.string    :type
    end
  end
end
