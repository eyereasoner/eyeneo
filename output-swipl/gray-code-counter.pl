:- op(1200, xfx, :+).

answer('urn:example:gcc'([1, 1, 1, 1, 1, 1, 1, 1, 1], [0, 0, 0], [[0, 0, 1], [0, 1, 1], [0, 1, 0], [1, 1, 0], [1, 1, 1], [1, 0, 1], [1, 0, 0], [0, 0, 0], [0, 0, 1]])).

step((true:+'urn:example:gcc'([1, 1, 1, 1, 1, 1, 1, 1, 1], [0, 0, 0], _)), 'urn:example:gcc'([1, 1, 1, 1, 1, 1, 1, 1, 1], [0, 0, 0], [[0, 0, 1], [0, 1, 1], [0, 1, 0], [1, 1, 0], [1, 1, 1], [1, 0, 1], [1, 0, 0], [0, 0, 0], [0, 0, 1]]), true).
