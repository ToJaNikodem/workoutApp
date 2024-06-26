$(document).ready(function () {
    const editNameIcon = $(".editNameIcon");
    const changeNameCloseButton = $(".changeNameBox .closeButton");
    const changeNameBox = $(".changeNameBox");

    const sendFeedbackCloseButton = $(".sendFeedbackBox .closeButton");
    const sendFeedbackBox = $(".sendFeedbackBox");
    const sendFeedbackBoxButton = $(".sendFeedback");

    const deleteAccountButton = $(".deleteAccountButton");
    const warningMessageCloseButton = $(".warningMessage .closeButton");
    const warningMessage = $(".warningMessage");

    const addWorkout = $('.addWorkout');
    const addWorkoutButton = $('.addWorkoutButton');

    editNameIcon.click(toggleChangeNameBox);
    changeNameCloseButton.click(toggleChangeNameBox);

    function toggleChangeNameBox() {
        changeNameBox.toggleClass("active");
    }

    deleteAccountButton.click(toggleWarning);
    warningMessageCloseButton.click(toggleWarning);

    function toggleWarning() {
        warningMessage.toggleClass("active");
    }

    sendFeedbackBoxButton.click(toggleBox);
    sendFeedbackCloseButton.click(toggleBox);

    function toggleBox() {
        sendFeedbackBox.toggleClass("active");
    }

    addWorkoutButton.click(toggleAddWorkout);

    function toggleAddWorkout() {
        addWorkout.toggleClass("active");
    }

    $(document).on('click', '.showWorkout', function () {
        $(this).parent().toggleClass("active");
    });
});