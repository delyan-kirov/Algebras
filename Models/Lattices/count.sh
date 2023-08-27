#!/usr/bin/env bash
echo solve model
conjure solve -ac --number-of-solutions=all --solver=nbc_minisat_all geometric.essence n.param
echo gathering eprime data
find ./conjure-output/ -type f ! -name "*solution*" -exec cat {} \; >> output 2>/dev/null
echo counting soltions
grep "SolverSolutionsFound:" output | tail -n 1
echo run nauty
python3 nauty.py >> output
echo draw and count
python3 graph.py >> output
echo print clean
awk '/SolverTotalTime/{p=""; found=1} found{p=p $0 ORS} END{printf "%s\n", p}' output >> outputClean
# print results
cat outputClean

echo "deleting cached files"
find -iname '*.solution' -type f -print0  | xargs --null -n 100 rm -vrf | wc -l
find -iname '*.txt' -type f -print0  | xargs --null -n 100 rm -vrf | wc -l
find -iname '*.png' -type f -print0  | xargs --null -n 100 rm -vrf | wc -l

