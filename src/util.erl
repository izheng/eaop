%%%-------------------------------------------------------------------
%%% @author Ian Cassar
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Dec 2016 3:55 PM
%%%-------------------------------------------------------------------
-module(util).
-author("Ian Cassar").

%% API
-export([regex_match/2]).

regex_match(Subject, RE) ->
  IsMatch = re:run(Subject, RE),
  case IsMatch of
    nomatch -> false;
    {match, _} -> true
  end.