import collections

def solution(participant, completion):

  #동명이인이 없는 경우
  completion = list(set(participant) - set(completion))

  if len(completion) != 0:
    return completion[0]

  #동명이인이 있는 경우
  participant = sorted(participant)
  completion = sorted(completion)

  for i in range(len(participant)):
    if participant[i] != completion[i]:
      return participant[i]
  answer = ''
  return answer

def solution(participant, completion):
    answer = collections.Counter(participant) - collections.Counter(completion)
    return list(answer.keys())[0]