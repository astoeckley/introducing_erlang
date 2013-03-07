%% @author Simon St.Laurant <simonstl@simonstl.com> [http://simonstl.com]
%% @doc Functions calculating velocities archieved by objects
%% dropped in a vaccuum.
%% @reference from <a href="http://shop.oreilly.com/product/0636920025818.do">Introducing Erlang</a>,
%% O'Reilly Media, Inc., 2012
%% @copyright 2012 by Simon St.Laurent
%% @version 0.1

-module(drop).
-export([fall_velocity/1]).

fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).
