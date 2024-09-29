
<?php
require_once("inc/header.php");
require_once("inc/navigation.php");


if (isset($_GET['homepage'])) {
    require_once("inc/homepage.php");
} else if (isset($_GET['addElectionPage'])) {
    require_once("inc/add_elections.php");
} else if (isset($_GET['addCandidatePage'])) {
    require_once("inc/add_candidates.php");
} else if (isset($_GET['viewResult'])) {
    require_once("inc/viewResults.php");
} else if (isset($_GET['addVotersPage'])) {
    ?> <script>location.assign("http://localhost/OnlineVotingSystem/?sign-up=1")</script> <?php
    ;
}
?>
