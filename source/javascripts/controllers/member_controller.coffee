angular.module("github").controller "MemberController", ($scope, member) ->
  $scope.member = member
  $scope.$watch "member", (member) ->
    member.patch()
  , true