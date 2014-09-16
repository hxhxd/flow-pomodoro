import QtQuick 2.1
import Controller 1.0

Item {
    id: root
    anchors.fill: parent

    ChoicePopup {
        anchors.fill: parent
        model: _controller.rightClickedTask === null ? null : _controller.rightClickedTask.contextMenuModel
        title: _controller.rightClickedTask !== null ? _controller.rightClickedTask.summary : ""
        onChoiceClicked: {
            if (index === TaskContextMenuModel.OptionTypeEdit) {
                _controller.editTask(_controller.rightClickedTask, Controller.EditModeInline)
            } else if (index ===  TaskContextMenuModel.OptionTypeDelete) {
                _controller.removeTask(_controller.rightClickedTask)
            } else if (index ===  TaskContextMenuModel.OptionTypeNewTag) {
                _controller.configureTabIndex = Controller.TagsTab
                _controller.currentPage = Controller.ConfigurePage
            } else if (index ===  TaskContextMenuModel.OptionTypeQueue) {
                console.log("TODO")
            } else {
                console.warn("Unknown index " + index)
            }
            _controller.setRightClickedTask(null)
        }

        onChoiceToggled: {
            if (checkState) {
                _controller.rightClickedTask.addTag(itemText)
            } else {
                _controller.rightClickedTask.removeTag(itemText)
            }
        }

        onDismissPopup: {
            _controller.setRightClickedTask(null)
        }
    }
}
