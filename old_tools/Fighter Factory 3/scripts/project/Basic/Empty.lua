
function template(project)
  local dlg = Wizard()
  dlg.text = translate("Empty project")

  local page = WizardPage()
  page.title = dlg.text
  page.subTitle = translate("Choose the type of the new blank project")
  dlg:addPage(page)

  local lay = BoxLayout(BoxLayout.Vertical)
  page.layout = lay

  local char = lay:addWidget(RadioBox(translate("Character"), page))
  local stage = lay:addWidget(RadioBox(translate("Stage"), page))
  local font = lay:addWidget(RadioBox(translate("Font"), page))
  local story = lay:addWidget(RadioBox(translate("Storyboard"), page))

  char.checked = true

  local ret = dlg:show() == Dialog.Accepted

  if char.checked then
    project.type = Project.Character
  elseif stage.checked then
    project.type = Project.Stage
  elseif font.checked then
    project.type = Project.Font
  else
    project.type = Project.Storyboard
  end

  return ret
end
