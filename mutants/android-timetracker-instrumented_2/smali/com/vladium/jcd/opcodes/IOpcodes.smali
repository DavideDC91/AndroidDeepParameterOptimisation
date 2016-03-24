.class public interface abstract Lcom/vladium/jcd/opcodes/IOpcodes;
.super Ljava/lang/Object;
.source "IOpcodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vladium/jcd/opcodes/IOpcodes$clinit;
    }
.end annotation


# static fields
.field public static final BRANCHES:[Z

.field public static final COMPOUND_CONDITIONAL_BRANCHES:[Z

.field public static final CONDITIONAL_BRANCHES:[Z

.field public static final MNEMONICS:[Ljava/lang/String;

.field public static final NARROW_SIZE:[I

.field public static final UNCONDITIONAL_BRANCHES:[Z

.field public static final WIDE_SIZE:[I

.field public static final _aaload:I = 0x32

.field public static final _aastore:I = 0x53

.field public static final _aconst_null:I = 0x1

.field public static final _aload:I = 0x19

.field public static final _aload_0:I = 0x2a

.field public static final _aload_1:I = 0x2b

.field public static final _aload_2:I = 0x2c

.field public static final _aload_3:I = 0x2d

.field public static final _anewarray:I = 0xbd

.field public static final _areturn:I = 0xb0

.field public static final _arraylength:I = 0xbe

.field public static final _astore:I = 0x3a

.field public static final _astore_0:I = 0x4b

.field public static final _astore_1:I = 0x4c

.field public static final _astore_2:I = 0x4d

.field public static final _astore_3:I = 0x4e

.field public static final _athrow:I = 0xbf

.field public static final _baload:I = 0x33

.field public static final _bastore:I = 0x54

.field public static final _bipush:I = 0x10

.field public static final _breakpoint:I = 0xca

.field public static final _caload:I = 0x34

.field public static final _castore:I = 0x55

.field public static final _checkcast:I = 0xc0

.field public static final _d2f:I = 0x90

.field public static final _d2i:I = 0x8e

.field public static final _d2l:I = 0x8f

.field public static final _dadd:I = 0x63

.field public static final _daload:I = 0x31

.field public static final _dastore:I = 0x52

.field public static final _dcmpg:I = 0x98

.field public static final _dcmpl:I = 0x97

.field public static final _dconst_0:I = 0xe

.field public static final _dconst_1:I = 0xf

.field public static final _ddiv:I = 0x6f

.field public static final _dload:I = 0x18

.field public static final _dload_0:I = 0x26

.field public static final _dload_1:I = 0x27

.field public static final _dload_2:I = 0x28

.field public static final _dload_3:I = 0x29

.field public static final _dmul:I = 0x6b

.field public static final _dneg:I = 0x77

.field public static final _drem:I = 0x73

.field public static final _dreturn:I = 0xaf

.field public static final _dstore:I = 0x39

.field public static final _dstore_0:I = 0x47

.field public static final _dstore_1:I = 0x48

.field public static final _dstore_2:I = 0x49

.field public static final _dstore_3:I = 0x4a

.field public static final _dsub:I = 0x67

.field public static final _dup:I = 0x59

.field public static final _dup2:I = 0x5c

.field public static final _dup2_x1:I = 0x5d

.field public static final _dup2_x2:I = 0x5e

.field public static final _dup_x1:I = 0x5a

.field public static final _dup_x2:I = 0x5b

.field public static final _f2d:I = 0x8d

.field public static final _f2i:I = 0x8b

.field public static final _f2l:I = 0x8c

.field public static final _fadd:I = 0x62

.field public static final _faload:I = 0x30

.field public static final _fastore:I = 0x51

.field public static final _fcmpg:I = 0x96

.field public static final _fcmpl:I = 0x95

.field public static final _fconst_0:I = 0xb

.field public static final _fconst_1:I = 0xc

.field public static final _fconst_2:I = 0xd

.field public static final _fdiv:I = 0x6e

.field public static final _fload:I = 0x17

.field public static final _fload_0:I = 0x22

.field public static final _fload_1:I = 0x23

.field public static final _fload_2:I = 0x24

.field public static final _fload_3:I = 0x25

.field public static final _fmul:I = 0x6a

.field public static final _fneg:I = 0x76

.field public static final _frem:I = 0x72

.field public static final _freturn:I = 0xae

.field public static final _fstore:I = 0x38

.field public static final _fstore_0:I = 0x43

.field public static final _fstore_1:I = 0x44

.field public static final _fstore_2:I = 0x45

.field public static final _fstore_3:I = 0x46

.field public static final _fsub:I = 0x66

.field public static final _getfield:I = 0xb4

.field public static final _getstatic:I = 0xb2

.field public static final _goto:I = 0xa7

.field public static final _goto_w:I = 0xc8

.field public static final _i2b:I = 0x91

.field public static final _i2c:I = 0x92

.field public static final _i2d:I = 0x87

.field public static final _i2f:I = 0x86

.field public static final _i2l:I = 0x85

.field public static final _i2s:I = 0x93

.field public static final _iadd:I = 0x60

.field public static final _iaload:I = 0x2e

.field public static final _iand:I = 0x7e

.field public static final _iastore:I = 0x4f

.field public static final _iconst_0:I = 0x3

.field public static final _iconst_1:I = 0x4

.field public static final _iconst_2:I = 0x5

.field public static final _iconst_3:I = 0x6

.field public static final _iconst_4:I = 0x7

.field public static final _iconst_5:I = 0x8

.field public static final _iconst_m1:I = 0x2

.field public static final _idiv:I = 0x6c

.field public static final _if_acmpeq:I = 0xa5

.field public static final _if_acmpne:I = 0xa6

.field public static final _if_icmpeq:I = 0x9f

.field public static final _if_icmpge:I = 0xa2

.field public static final _if_icmpgt:I = 0xa3

.field public static final _if_icmple:I = 0xa4

.field public static final _if_icmplt:I = 0xa1

.field public static final _if_icmpne:I = 0xa0

.field public static final _ifeq:I = 0x99

.field public static final _ifge:I = 0x9c

.field public static final _ifgt:I = 0x9d

.field public static final _ifle:I = 0x9e

.field public static final _iflt:I = 0x9b

.field public static final _ifne:I = 0x9a

.field public static final _ifnonnull:I = 0xc7

.field public static final _ifnull:I = 0xc6

.field public static final _iinc:I = 0x84

.field public static final _iload:I = 0x15

.field public static final _iload_0:I = 0x1a

.field public static final _iload_1:I = 0x1b

.field public static final _iload_2:I = 0x1c

.field public static final _iload_3:I = 0x1d

.field public static final _impdep1:I = 0xfe

.field public static final _impdep2:I = 0xff

.field public static final _imul:I = 0x68

.field public static final _ineg:I = 0x74

.field public static final _instanceof:I = 0xc1

.field public static final _invokeinterface:I = 0xb9

.field public static final _invokespecial:I = 0xb7

.field public static final _invokestatic:I = 0xb8

.field public static final _invokevirtual:I = 0xb6

.field public static final _ior:I = 0x80

.field public static final _irem:I = 0x70

.field public static final _ireturn:I = 0xac

.field public static final _ishl:I = 0x78

.field public static final _ishr:I = 0x7a

.field public static final _istore:I = 0x36

.field public static final _istore_0:I = 0x3b

.field public static final _istore_1:I = 0x3c

.field public static final _istore_2:I = 0x3d

.field public static final _istore_3:I = 0x3e

.field public static final _isub:I = 0x64

.field public static final _iushr:I = 0x7c

.field public static final _ixor:I = 0x82

.field public static final _jsr:I = 0xa8

.field public static final _jsr_w:I = 0xc9

.field public static final _l2d:I = 0x8a

.field public static final _l2f:I = 0x89

.field public static final _l2i:I = 0x88

.field public static final _ladd:I = 0x61

.field public static final _laload:I = 0x2f

.field public static final _land:I = 0x7f

.field public static final _lastore:I = 0x50

.field public static final _lcmp:I = 0x94

.field public static final _lconst_0:I = 0x9

.field public static final _lconst_1:I = 0xa

.field public static final _ldc:I = 0x12

.field public static final _ldc2_w:I = 0x14

.field public static final _ldc_w:I = 0x13

.field public static final _ldiv:I = 0x6d

.field public static final _lload:I = 0x16

.field public static final _lload_0:I = 0x1e

.field public static final _lload_1:I = 0x1f

.field public static final _lload_2:I = 0x20

.field public static final _lload_3:I = 0x21

.field public static final _lmul:I = 0x69

.field public static final _lneg:I = 0x75

.field public static final _lookupswitch:I = 0xab

.field public static final _lor:I = 0x81

.field public static final _lrem:I = 0x71

.field public static final _lreturn:I = 0xad

.field public static final _lshl:I = 0x79

.field public static final _lshr:I = 0x7b

.field public static final _lstore:I = 0x37

.field public static final _lstore_0:I = 0x3f

.field public static final _lstore_1:I = 0x40

.field public static final _lstore_2:I = 0x41

.field public static final _lstore_3:I = 0x42

.field public static final _lsub:I = 0x65

.field public static final _lushr:I = 0x7d

.field public static final _lxor:I = 0x83

.field public static final _monitorenter:I = 0xc2

.field public static final _monitorexit:I = 0xc3

.field public static final _multianewarray:I = 0xc5

.field public static final _new:I = 0xbb

.field public static final _newarray:I = 0xbc

.field public static final _nop:I = 0x0

.field public static final _pop:I = 0x57

.field public static final _pop2:I = 0x58

.field public static final _putfield:I = 0xb5

.field public static final _putstatic:I = 0xb3

.field public static final _ret:I = 0xa9

.field public static final _return:I = 0xb1

.field public static final _saload:I = 0x35

.field public static final _sastore:I = 0x56

.field public static final _sipush:I = 0x11

.field public static final _swap:I = 0x5f

.field public static final _tableswitch:I = 0xaa

.field public static final _unused:I = 0xba

.field public static final _wide:I = 0xc4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 229
    const/16 v0, 0xca

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aconst_null"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iconst_m1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iconst_0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iconst_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iconst_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iconst_3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "iconst_4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "iconst_5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lconst_0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lconst_1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fconst_0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fconst_1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fconst_2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dconst_0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dconst_1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "bipush"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sipush"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ldc"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ldc_w"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ldc2_w"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "iload"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "lload"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "fload"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "dload"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "aload"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "iload_0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "iload_1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "iload_2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "iload_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "lload_0"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "lload_1"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "lload_2"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "lload_3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "fload_0"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "fload_1"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "fload_2"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "fload_3"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "dload_0"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "dload_1"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "dload_2"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "dload_3"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "aload_0"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "aload_1"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "aload_2"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "aload_3"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "iaload"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "laload"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "faload"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "daload"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "aaload"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "baload"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "caload"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "saload"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "istore"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "lstore"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "fstore"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "dstore"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "astore"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "istore_0"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "istore_1"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "istore_2"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "istore_3"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "lstore_0"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "lstore_1"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "lstore_2"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "lstore_3"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "fstore_0"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "fstore_1"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "fstore_2"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "fstore_3"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "dstore_0"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "dstore_1"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "dstore_2"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "dstore_3"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "astore_0"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "astore_1"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "astore_2"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "astore_3"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "iastore"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "lastore"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "fastore"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "dastore"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "aastore"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "bastore"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "castore"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "sastore"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "pop"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "pop2"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "dup"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "dup_x1"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "dup_x2"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "dup2"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "dup2_x1"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "dup2_x2"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "swap"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "iadd"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "ladd"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "fadd"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "dadd"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "isub"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "lsub"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "fsub"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "dsub"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "imul"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "lmul"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "fmul"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "dmul"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "idiv"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "ldiv"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "fdiv"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "ddiv"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "irem"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "lrem"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "frem"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "drem"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "ineg"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "lneg"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "fneg"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "dneg"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "ishl"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "lshl"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "ishr"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "lshr"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "iushr"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "lushr"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "iand"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "land"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "ior"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "lor"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "ixor"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "lxor"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "iinc"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "i2l"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "i2f"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "i2d"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "l2i"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "l2f"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "l2d"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "f2i"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "f2l"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "f2d"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "d2i"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "d2l"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "d2f"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "i2b"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "i2c"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "i2s"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "lcmp"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "fcmpl"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "fcmpg"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "dcmpl"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "dcmpg"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "ifeq"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "ifne"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "iflt"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "ifge"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "ifgt"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "ifle"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "if_icmpeq"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "if_icmpne"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "if_icmplt"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "if_icmpge"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "if_icmpgt"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "if_icmple"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "if_acmpeq"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "if_acmpne"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "jsr"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "ret"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "tableswitch"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "lookupswitch"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "ireturn"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "lreturn"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "freturn"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "dreturn"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "areturn"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "getstatic"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "putstatic"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "getfield"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "putfield"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "invokevirtual"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "invokespecial"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "invokestatic"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "invokeinterface"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "unused"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "newarray"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "anewarray"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "arraylength"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "athrow"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "checkcast"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "monitorenter"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "monitorexit"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "[wide]"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "multianewarray"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "ifnull"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "ifnonnull"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "goto_w"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "jsr_w"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->MNEMONICS:[Ljava/lang/String;

    .line 436
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_CONDITIONAL_BRANCHES:[Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->CONDITIONAL_BRANCHES:[Z

    .line 437
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_COMPOUND_CONDITIONAL_BRANCHES:[Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->COMPOUND_CONDITIONAL_BRANCHES:[Z

    .line 438
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_UNCONDITIONAL_BRANCHES:[Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->UNCONDITIONAL_BRANCHES:[Z

    .line 439
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_BRANCHES:[Z

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->BRANCHES:[Z

    .line 441
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_NARROW_SIZE:[I

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->NARROW_SIZE:[I

    .line 442
    sget-object v0, Lcom/vladium/jcd/opcodes/IOpcodes$clinit;->_WIDE_SIZE:[I

    sput-object v0, Lcom/vladium/jcd/opcodes/IOpcodes;->WIDE_SIZE:[I

    return-void
.end method
