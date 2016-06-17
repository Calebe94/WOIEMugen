
function template(project)
  local dlg = Wizard()
  dlg.text = translate("TrueType Font")

  --  Page 1 --

  local page1 = WizardPage()
  page1.title = dlg.text
  page1.subTitle = translate("Enter you name here")
  dlg:addPage(page1)

  local lay = BoxLayout(BoxLayout.Vertical)
  page1.layout = lay

  lay:addWidget(Label(translate("Author:"), page1))
  local author = lay:addWidget(TextEdit(page1))
  author.text = translate("My name")

  --  Page 2 --

  local page2 = WizardPage()
  page2.title = dlg.text
  page2.subTitle = translate("Enter the font information here")
  dlg:addPage(page2)

  local lay2 = BoxLayout(BoxLayout.Vertical)
  page2.layout = lay2

  lay2:addWidget(Label(translate("Name:"), page2))
  local name = lay2:addWidget(TextEdit(page2))
  name.text = translate("Font name")

  lay2:addWidget(Label(translate("File name:"), page2))
  local file = lay2:addWidget(TextEdit(page2))
  file.text = translate("font.ttf")

  --  Page 3 --

  local page3 = WizardPage()
  page3.title = dlg.text
  page3.subTitle = translate("Enter you name here")
  dlg:addPage(page3)

  local lay3 = BoxLayout(BoxLayout.Vertical)
  page3.layout = lay3

  lay3:addWidget(Label(translate("Size (in pixels):"), page3))
  local size = lay3:addWidget(IntEdit(page3))
  size.value = 15

  local blend = lay3:addWidget(CheckBox(translate("Blended"), page3))
  blend.checked = true

  --  Generate template --

  if dlg:show() == Dialog.Accepted then
    local text = [==[
[FNT v2]
fntversion = 2,00
name = "@name"
author = "@author"

[Def]
type = truetype
size = @size,0
spacing = 1,1
offset = 0,0
file = @file
blend = @blend]==]
    local b = "0"
    if blend.checked then
      b = "1"
    end
    text = text:gsub("@name", name.text):gsub("@file", file.text):gsub("@author", author.text)
    text = text:gsub("@size", tostring(size.value)):gsub("@blend", b)

    project.definitions:insertText(text)

    return true
  end

  return false
end
