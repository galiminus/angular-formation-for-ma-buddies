angular.module("github").directive "userCard", ->
  restrict: "E"
  templateUrl: "partials/userCard.html"
  transclude: true
  scope:
    member: "="
  link: (scope, element, attrs) ->
    if scope.member.id < 10000
      element.addClass 'well'
