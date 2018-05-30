NonGraphicCharacters::NonGraphicCharacters():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()
  mov rax, QWORD PTR [rbp-8]
  add rax, 64
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()
  mov rax, QWORD PTR [rbp-8]
  add rax, 96
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()
  nop
  leave
  ret
NonGraphicCharacters::~NonGraphicCharacters():
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov rax, QWORD PTR [rbp-8]
  add rax, 96
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  mov rax, QWORD PTR [rbp-8]
  add rax, 64
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  mov rax, QWORD PTR [rbp-8]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  nop
  leave
  ret
.LC0:
  .string "\t"
.LC1:
  .string "\n"
.LC2:
  .string "\007"
.LC3:
  .string "\r"
provideFilledStructure():
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 24
  mov QWORD PTR [rbp-24], rdi
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call NonGraphicCharacters::NonGraphicCharacters()
  mov rax, QWORD PTR [rbp-24]
  mov esi, OFFSET FLAT:.LC0
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
  mov rax, QWORD PTR [rbp-24]
  add rax, 32
  mov esi, OFFSET FLAT:.LC1
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
  mov rax, QWORD PTR [rbp-24]
  add rax, 64
  mov esi, OFFSET FLAT:.LC2
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
  mov rax, QWORD PTR [rbp-24]
  add rax, 96
  mov esi, OFFSET FLAT:.LC3
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
  jmp .L7
  mov rbx, rax
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L7:
  mov rax, QWORD PTR [rbp-24]
  add rsp, 24
  pop rbx
  pop rbp
  ret
.LC4:
  .string ""
stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 56
  mov QWORD PTR [rbp-40], rdi
  mov QWORD PTR [rbp-48], rsi
  mov DWORD PTR [rbp-52], edx
  lea rax, [rbp-21]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-21]
  mov rax, QWORD PTR [rbp-40]
  mov esi, OFFSET FLAT:.LC4
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-21]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov DWORD PTR [rbp-20], 0
.L10:
  mov eax, DWORD PTR [rbp-20]
  cmp eax, DWORD PTR [rbp-52]
  jge .L16
  mov rdx, QWORD PTR [rbp-48]
  mov rax, QWORD PTR [rbp-40]
  mov rsi, rdx
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator+=(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  add DWORD PTR [rbp-20], 1
  jmp .L10
  mov rbx, rax
  lea rax, [rbp-21]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
  mov rbx, rax
  mov rax, QWORD PTR [rbp-40]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L16:
  nop
  mov rax, QWORD PTR [rbp-40]
  add rsp, 56
  pop rbx
  pop rbp
  ret
.LC5:
  .string "-"
.LC6:
  .string "%s%s"
.LC7:
  .string " "
.LC8:
  .string "|%s%s%s"
.LC9:
  .string "%s%s%s|%s"
outputTableRow(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push rbp
  mov rbp, rsp
  push r14
  push r13
  push r12
  push rbx
  sub rsp, 560
  mov QWORD PTR [rbp-584], rdi
  mov QWORD PTR [rbp-592], rsi
  lea rax, [rbp-576]
  mov rdi, rax
  call provideFilledStructure()
  lea rax, [rbp-576]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rbx, rax
  lea rax, [rbp-369]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-369]
  lea rax, [rbp-416]
  mov esi, OFFSET FLAT:.LC5
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-448]
  lea rcx, [rbp-416]
  mov edx, 80
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-448]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rdx, rbx
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC6
  mov eax, 0
  call printf
  lea rax, [rbp-448]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-416]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-369]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov DWORD PTR [rbp-36], 40
  mov rax, QWORD PTR [rbp-584]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::length() const
  mov DWORD PTR [rbp-40], eax
  mov eax, DWORD PTR [rbp-36]
  sub eax, DWORD PTR [rbp-40]
  mov DWORD PTR [rbp-44], eax
  mov eax, DWORD PTR [rbp-44]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  mov ebx, eax
  lea rax, [rbp-289]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-289]
  lea rax, [rbp-336]
  mov esi, OFFSET FLAT:.LC7
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-368]
  lea rcx, [rbp-336]
  mov edx, ebx
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-368]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r12, rax
  mov rax, QWORD PTR [rbp-584]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rbx, rax
  mov eax, DWORD PTR [rbp-44]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  mov r13d, eax
  lea rax, [rbp-209]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-209]
  lea rax, [rbp-256]
  mov esi, OFFSET FLAT:.LC7
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-288]
  lea rcx, [rbp-256]
  mov edx, r13d
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-288]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rcx, r12
  mov rdx, rbx
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC8
  mov eax, 0
  call printf
  lea rax, [rbp-288]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-256]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-209]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-368]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-336]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-289]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov edi, 124
  call putchar
  mov DWORD PTR [rbp-48], 40
  mov rax, QWORD PTR [rbp-592]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::length() const
  mov DWORD PTR [rbp-52], eax
  mov eax, DWORD PTR [rbp-48]
  sub eax, DWORD PTR [rbp-52]
  mov DWORD PTR [rbp-56], eax
  lea rax, [rbp-576]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r13, rax
  mov eax, DWORD PTR [rbp-56]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  lea ebx, [rax-1]
  lea rax, [rbp-129]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-129]
  lea rax, [rbp-176]
  mov esi, OFFSET FLAT:.LC7
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-208]
  lea rcx, [rbp-176]
  mov edx, ebx
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-208]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r12, rax
  mov rax, QWORD PTR [rbp-592]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rbx, rax
  mov eax, DWORD PTR [rbp-56]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  mov r14d, eax
  lea rax, [rbp-57]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-57]
  lea rax, [rbp-96]
  mov esi, OFFSET FLAT:.LC7
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-128]
  lea rcx, [rbp-96]
  mov edx, r14d
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-128]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r8, r13
  mov rcx, r12
  mov rdx, rbx
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC9
  mov eax, 0
  call printf
  lea rax, [rbp-128]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-96]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-57]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-208]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-176]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-129]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-576]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  jmp .L46
  mov rbx, rax
  lea rax, [rbp-448]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L19
  mov rbx, rax
.L19:
  lea rax, [rbp-416]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L20
  mov rbx, rax
.L20:
  lea rax, [rbp-369]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  jmp .L21
  mov rbx, rax
  lea rax, [rbp-288]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L23
  mov rbx, rax
.L23:
  lea rax, [rbp-256]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L24
  mov rbx, rax
.L24:
  lea rax, [rbp-209]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-368]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L25
  mov rbx, rax
.L25:
  lea rax, [rbp-336]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L26
  mov rbx, rax
.L26:
  lea rax, [rbp-289]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  jmp .L21
  mov rbx, rax
  lea rax, [rbp-128]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L28
  mov rbx, rax
.L28:
  lea rax, [rbp-96]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L29
  mov rbx, rax
.L29:
  lea rax, [rbp-57]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-208]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L30
  mov rbx, rax
.L30:
  lea rax, [rbp-176]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L31
  mov rbx, rax
.L31:
  lea rax, [rbp-129]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  jmp .L21
  mov rbx, rax
.L21:
  lea rax, [rbp-576]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L46:
  add rsp, 560
  pop rbx
  pop r12
  pop r13
  pop r14
  pop rbp
  ret
endTable():
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 216
  lea rax, [rbp-224]
  mov rdi, rax
  call provideFilledStructure()
  lea rax, [rbp-224]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rbx, rax
  lea rax, [rbp-17]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-17]
  lea rax, [rbp-64]
  mov esi, OFFSET FLAT:.LC5
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-96]
  lea rcx, [rbp-64]
  mov edx, 80
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-96]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rdx, rbx
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC6
  mov eax, 0
  call printf
  lea rax, [rbp-96]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-64]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-17]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-224]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  jmp .L54
  mov rbx, rax
  lea rax, [rbp-96]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L49
  mov rbx, rax
.L49:
  lea rax, [rbp-64]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L50
  mov rbx, rax
.L50:
  lea rax, [rbp-17]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-224]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L54:
  add rsp, 216
  pop rbx
  pop rbp
  ret
.LC10:
  .string "*"
.LC11:
  .string "*%s%s%s*%s"
outputTableHeader(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >):
  push rbp
  mov rbp, rsp
  push r14
  push r13
  push r12
  push rbx
  sub rsp, 384
  mov QWORD PTR [rbp-408], rdi
  lea rax, [rbp-400]
  mov rdi, rax
  call provideFilledStructure()
  lea rax, [rbp-400]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rbx, rax
  lea rax, [rbp-193]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-193]
  lea rax, [rbp-240]
  mov esi, OFFSET FLAT:.LC10
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-272]
  lea rcx, [rbp-240]
  mov edx, 80
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-272]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov rdx, rbx
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC6
  mov eax, 0
  call printf
  lea rax, [rbp-272]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-240]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-193]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, QWORD PTR [rbp-408]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::length() const
  mov DWORD PTR [rbp-36], eax
  mov eax, 80
  sub eax, DWORD PTR [rbp-36]
  mov DWORD PTR [rbp-40], eax
  lea rax, [rbp-400]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r14, rax
  mov eax, DWORD PTR [rbp-40]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  mov ebx, eax
  lea rax, [rbp-113]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-113]
  lea rax, [rbp-160]
  mov esi, OFFSET FLAT:.LC7
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-192]
  lea rcx, [rbp-160]
  mov edx, ebx
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-192]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r13, rax
  mov rax, QWORD PTR [rbp-408]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r12, rax
  mov eax, DWORD PTR [rbp-40]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  lea ebx, [rax-1]
  lea rax, [rbp-41]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-41]
  lea rax, [rbp-80]
  mov esi, OFFSET FLAT:.LC7
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-112]
  lea rcx, [rbp-80]
  mov edx, ebx
  mov rsi, rcx
  mov rdi, rax
  call stringRepeat(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, int)
  lea rax, [rbp-112]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
  mov r8, r14
  mov rcx, r13
  mov rdx, r12
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC11
  mov eax, 0
  call printf
  lea rax, [rbp-112]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-80]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-41]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-192]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-160]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-113]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-400]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  jmp .L73
  mov rbx, rax
  lea rax, [rbp-272]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L57
  mov rbx, rax
.L57:
  lea rax, [rbp-240]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L58
  mov rbx, rax
.L58:
  lea rax, [rbp-193]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  jmp .L59
  mov rbx, rax
  lea rax, [rbp-112]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L61
  mov rbx, rax
.L61:
  lea rax, [rbp-80]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L62
  mov rbx, rax
.L62:
  lea rax, [rbp-41]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-192]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L63
  mov rbx, rax
.L63:
  lea rax, [rbp-160]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L64
  mov rbx, rax
.L64:
  lea rax, [rbp-113]
  mov rdi, rax
  call std::allocator<char>::~allocator()
.L59:
  lea rax, [rbp-400]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L73:
  add rsp, 384
  pop rbx
  pop r12
  pop r13
  pop r14
  pop rbp
  ret
.LC12:
  .string "Character Escape Sequences"
.LC13:
  .string "EscapeSequence"
.LC14:
  .string "Character"
.LC15:
  .string "\\t"
.LC16:
  .string "Tab"
.LC17:
  .string "\\n"
.LC18:
  .string "NewLine"
.LC19:
  .string "\\a"
.LC20:
  .string "Alarm"
.LC21:
  .string "\\r"
.LC22:
  .string "Carriage Return"
outputTableForChars():
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 536
  lea rax, [rbp-497]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-497]
  lea rax, [rbp-544]
  mov esi, OFFSET FLAT:.LC12
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-544]
  mov rdi, rax
  call outputTableHeader(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  lea rax, [rbp-544]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-497]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-449]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-449]
  lea rax, [rbp-496]
  mov esi, OFFSET FLAT:.LC13
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-401]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-401]
  lea rax, [rbp-448]
  mov esi, OFFSET FLAT:.LC14
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rdx, [rbp-496]
  lea rax, [rbp-448]
  mov rsi, rdx
  mov rdi, rax
  call outputTableRow(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  lea rax, [rbp-448]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-401]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-496]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-449]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-353]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-353]
  lea rax, [rbp-400]
  mov esi, OFFSET FLAT:.LC15
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-305]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-305]
  lea rax, [rbp-352]
  mov esi, OFFSET FLAT:.LC16
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rdx, [rbp-400]
  lea rax, [rbp-352]
  mov rsi, rdx
  mov rdi, rax
  call outputTableRow(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  lea rax, [rbp-352]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-305]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-400]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-353]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-257]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-257]
  lea rax, [rbp-304]
  mov esi, OFFSET FLAT:.LC17
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-209]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-209]
  lea rax, [rbp-256]
  mov esi, OFFSET FLAT:.LC18
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rdx, [rbp-304]
  lea rax, [rbp-256]
  mov rsi, rdx
  mov rdi, rax
  call outputTableRow(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  lea rax, [rbp-256]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-209]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-304]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-257]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-161]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-161]
  lea rax, [rbp-208]
  mov esi, OFFSET FLAT:.LC19
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-113]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-113]
  lea rax, [rbp-160]
  mov esi, OFFSET FLAT:.LC20
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rdx, [rbp-208]
  lea rax, [rbp-160]
  mov rsi, rdx
  mov rdi, rax
  call outputTableRow(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  lea rax, [rbp-160]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-113]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-208]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-161]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-65]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-65]
  lea rax, [rbp-112]
  mov esi, OFFSET FLAT:.LC21
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rax, [rbp-17]
  mov rdi, rax
  call std::allocator<char>::allocator()
  lea rdx, [rbp-17]
  lea rax, [rbp-64]
  mov esi, OFFSET FLAT:.LC22
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)
  lea rdx, [rbp-112]
  lea rax, [rbp-64]
  mov rsi, rdx
  mov rdi, rax
  call outputTableRow(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)
  lea rax, [rbp-64]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-17]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-112]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  lea rax, [rbp-65]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  call endTable()
  jmp .L109
  mov rbx, rax
  lea rax, [rbp-544]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L76
  mov rbx, rax
.L76:
  lea rax, [rbp-497]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
  mov rbx, rax
  lea rax, [rbp-448]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L78
  mov rbx, rax
.L78:
  lea rax, [rbp-401]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-496]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L79
  mov rbx, rax
.L79:
  lea rax, [rbp-449]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
  mov rbx, rax
  lea rax, [rbp-352]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L81
  mov rbx, rax
.L81:
  lea rax, [rbp-305]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-400]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L82
  mov rbx, rax
.L82:
  lea rax, [rbp-353]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
  mov rbx, rax
  lea rax, [rbp-256]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L84
  mov rbx, rax
.L84:
  lea rax, [rbp-209]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-304]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L85
  mov rbx, rax
.L85:
  lea rax, [rbp-257]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
  mov rbx, rax
  lea rax, [rbp-160]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L87
  mov rbx, rax
.L87:
  lea rax, [rbp-113]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-208]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L88
  mov rbx, rax
.L88:
  lea rax, [rbp-161]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
  mov rbx, rax
  lea rax, [rbp-64]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L90
  mov rbx, rax
.L90:
  lea rax, [rbp-17]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  lea rax, [rbp-112]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L91
  mov rbx, rax
.L91:
  lea rax, [rbp-65]
  mov rdi, rax
  call std::allocator<char>::~allocator()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L109:
  add rsp, 536
  pop rbx
  pop rbp
  ret
.LC23:
  .string "General Output. All lines are terminated with a new line (\\n)."
.LC24:
  .string "New Line: "
.LC25:
  .string "OUTPUT END FOR NEWLINE"
.LC26:
  .string "Tab: "
.LC27:
  .string "OUTPUT END FOR TAB"
.LC28:
  .string "Carriage Return: "
.LC29:
  .string "OUTPUT END FOR CARRIAGE RETURN"
.LC30:
  .string "Alarm: "
.LC31:
  .string "OUTPUT END FOR ALARM"
writeGeneralOutput(NonGraphicCharacters):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov QWORD PTR [rbp-8], rdi
  mov esi, OFFSET FLAT:.LC23
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC24
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC25
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC26
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC27
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC28
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 96
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC29
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC30
  mov edi, OFFSET FLAT:std::cout
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 64
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov esi, OFFSET FLAT:.LC31
  mov rdi, rax
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov rdx, rax
  mov rax, QWORD PTR [rbp-8]
  add rax, 32
  mov rsi, rax
  mov rdi, rdx
  call std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  nop
  leave
  ret
NonGraphicCharacters::NonGraphicCharacters(NonGraphicCharacters const&):
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 24
  mov QWORD PTR [rbp-24], rdi
  mov QWORD PTR [rbp-32], rsi
  mov rax, QWORD PTR [rbp-24]
  mov rdx, QWORD PTR [rbp-32]
  mov rsi, rdx
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov rax, QWORD PTR [rbp-24]
  add rax, 32
  mov rdx, QWORD PTR [rbp-32]
  add rdx, 32
  mov rsi, rdx
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov rax, QWORD PTR [rbp-24]
  add rax, 64
  mov rdx, QWORD PTR [rbp-32]
  add rdx, 64
  mov rsi, rdx
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  mov rax, QWORD PTR [rbp-24]
  add rax, 96
  mov rdx, QWORD PTR [rbp-32]
  add rdx, 96
  mov rsi, rdx
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
  jmp .L118
  mov rbx, rax
  mov rax, QWORD PTR [rbp-24]
  add rax, 64
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L113
  mov rbx, rax
.L113:
  mov rax, QWORD PTR [rbp-24]
  add rax, 32
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  jmp .L114
  mov rbx, rax
.L114:
  mov rax, QWORD PTR [rbp-24]
  mov rdi, rax
  call std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L118:
  add rsp, 24
  pop rbx
  pop rbp
  ret
main:
  push rbp
  mov rbp, rsp
  push rbx
  sub rsp, 264
  lea rax, [rbp-272]
  mov rdi, rax
  call provideFilledStructure()
  call outputTableForChars()
  lea rdx, [rbp-272]
  lea rax, [rbp-144]
  mov rsi, rdx
  mov rdi, rax
  call NonGraphicCharacters::NonGraphicCharacters(NonGraphicCharacters const&)
  lea rax, [rbp-144]
  mov rdi, rax
  call writeGeneralOutput(NonGraphicCharacters)
  lea rax, [rbp-144]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov ebx, 0
  lea rax, [rbp-272]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov eax, ebx
  jmp .L125
  mov rbx, rax
  lea rax, [rbp-144]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  jmp .L122
  mov rbx, rax
.L122:
  lea rax, [rbp-272]
  mov rdi, rax
  call NonGraphicCharacters::~NonGraphicCharacters()
  mov rax, rbx
  mov rdi, rax
  call _Unwind_Resume
.L125:
  add rsp, 264
  pop rbx
  pop rbp
  ret
__static_initialization_and_destruction_0(int, int):
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], edi
  mov DWORD PTR [rbp-8], esi
  cmp DWORD PTR [rbp-4], 1
  jne .L128
  cmp DWORD PTR [rbp-8], 65535
  jne .L128
  mov edi, OFFSET FLAT:std::__ioinit
  call std::ios_base::Init::Init()
  mov edx, OFFSET FLAT:__dso_handle
  mov esi, OFFSET FLAT:std::__ioinit
  mov edi, OFFSET FLAT:std::ios_base::Init::~Init()
  call __cxa_atexit
.L128:
  nop
  leave
  ret
_GLOBAL__sub_I__Z22provideFilledStructurev:
  push rbp
  mov rbp, rsp
  mov esi, 65535
  mov edi, 1
  call __static_initialization_and_destruction_0(int, int)
  pop rbp
  ret