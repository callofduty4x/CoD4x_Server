	push   %ebp
	mov    %esp,%ebp
	push   %edi
	push   %esi
	push   %ebx
	sub    $0x1c,%esp
	mov    0x8(%ebp),%eax
	mov    (%eax),%eax
	mov    %eax,-0x10(%ebp)
	xor    %edi,%edi
	xor    %esi,%esi
	movl   $0x0,-0x14(%ebp)
	jmp    Scr_GetFunction_loc1

Scr_GetFunction_loc3:
	add    $0x1,%edi
	addl   $0x6,-0x14(%ebp)
	add    $0xc,%esi
	cmp    $0xcd,%edi
	je     Scr_GetFunction_loc2

Scr_GetFunction_loc1:
	mov    0x826e060(%esi),%ebx
	mov    %ebx,0x4(%esp)
	mov    -0x10(%ebp),%edx
	mov    %edx,(%esp)
	mov    $0x804ab9c, %eax
	call   *%eax
	test   %eax,%eax
	jne    Scr_GetFunction_loc3
	mov    0x8(%ebp),%eax
	mov    %ebx,(%eax)
	mov    -0x14(%ebp),%eax
	mov    0x826e068(%eax,%eax,1),%edx
	mov    0xc(%ebp),%eax
	mov    %edx,(%eax)
	mov    -0x14(%ebp),%edx
	mov    0x826e064(%edx,%edx,1),%eax
	add    $0x1c,%esp
	pop    %ebx
	pop    %esi
	pop    %edi
	pop    %ebp
	ret    

Scr_GetFunction_loc2:
	xor    %eax,%eax
	add    $0x1c,%esp
	pop    %ebx
	pop    %esi
	pop    %edi
	pop    %ebp
	ret



