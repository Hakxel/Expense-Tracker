require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  test "full title helper" do
    assert_equal full_title, "Control de Gastos"
    assert_equal full_title("Inicio"), "Inicio | Control de Gastos"
  end
end
