.class public Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;
.super Ljava/lang/Object;
.source "T9SymbolList.java"


# static fields
.field static final FULL_MOON_SYMBOLS:[Ljava/lang/String;

.field static final HALF_MOON_SYMBOLS:[Ljava/lang/String;

.field private static final HALF_MOON_SYMBOL_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "@"

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "\""

    aput-object v1, v0, v5

    const-string v1, "\'"

    aput-object v1, v0, v6

    const-string v1, "..."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u00d7"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u00f7"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ".com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ".cn"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ".net"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u300a"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u300b"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u3010"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u3011"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u300e"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u300f"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u20ac"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u00b7"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u2190"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u2191"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u2192"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u2193"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u00b0"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u2109"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u2103"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u2122"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u00a9"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u00ae"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u2713"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u33a1"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u2030"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u2116"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->HALF_MOON_SYMBOLS:[Ljava/lang/String;

    .line 32
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\uff20"

    aput-object v1, v0, v3

    const-string v1, "."

    aput-object v1, v0, v4

    const-string v1, "\u201c"

    aput-object v1, v0, v5

    const-string v1, "\uff5e"

    aput-object v1, v0, v6

    const-string v1, "\u2018"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2026"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uff1f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uff01"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uff0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u3001"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uff08"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\uff09"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\uff03"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\uff04"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\uff05"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\uff0a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\uff0d"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\uff1b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u2014"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\uff06"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\uff5c"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\uff0b"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u00d7"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u00f7"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\uff1d"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u2026"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ".com"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ".cn"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ".net"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\uff1c"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\uff1e"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\uff5b"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\uff5d"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\uff3b"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\uff3d"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u300a"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u300b"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u3010"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u3011"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u300e"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u300f"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u20ac"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u00b7"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u2190"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u2191"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u2192"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u2193"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u00b0"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u2109"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u2103"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u2122"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u00a9"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u00ae"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u2713"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u33a1"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u2030"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u2116"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->FULL_MOON_SYMBOLS:[Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->HALF_MOON_SYMBOLS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->HALF_MOON_SYMBOL_LIST:Ljava/util/List;

    .line 54
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->HALF_MOON_SYMBOLS:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0xa

    sput v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->PAGE_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getFullMoonSymbols()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->FULL_MOON_SYMBOLS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getHalfMoonSymbolList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->HALF_MOON_SYMBOL_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getHalfMoonSymbols()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->HALF_MOON_SYMBOLS:[Ljava/lang/String;

    return-object v0
.end method
