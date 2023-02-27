defmodule NameBadge do
  def print(nil, name, department) do
    if is_nil(department) do
      "#{name} - OWNER"
    else
      "#{name} - #{String.upcase(department)}"
    end
  end

  def print(id, name, department) do
    if is_nil(department) do
      "[#{id}] - #{name} - OWNER"
    else
      "[#{id}] - #{name} - #{String.upcase(department)}"
    end
  end
end
