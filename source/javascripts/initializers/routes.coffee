angular.module("github").config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise "/members"
  $stateProvider
    .state "members",
      url: "/members"
      templateUrl: "partials/members.html"
      controller: "MembersController"
      resolve:
        members: (Restangular) ->
          Restangular.one("orgs", "af83").one("members").get()

    .state "members.show",
      url: "/:login"
      templateUrl: "partials/member.html"
      controller: "MemberController"
      resolve:
        member: (Restangular, $stateParams) ->
          Restangular.one("users", $stateParams.login).get()
