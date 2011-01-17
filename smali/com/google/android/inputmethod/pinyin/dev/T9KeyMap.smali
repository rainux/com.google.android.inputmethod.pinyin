.class public Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;
.super Ljava/lang/Object;
.source "T9KeyMap.java"


# static fields
.field private static final KEY_MAPS_INT:[[I

.field private static final KEY_MAPS_LOWER:[[C

.field private static final KEY_MAPS_UPPER:[[C


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [[C

    new-array v1, v3, [C

    fill-array-data v1, :array_ca

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_d2

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_da

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_e2

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_ea

    aput-object v1, v0, v3

    new-array v1, v4, [C

    fill-array-data v1, :array_f2

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_fc

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [C

    fill-array-data v2, :array_104

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->KEY_MAPS_UPPER:[[C

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [[C

    new-array v1, v3, [C

    fill-array-data v1, :array_10e

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_116

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_11e

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_126

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_12e

    aput-object v1, v0, v3

    new-array v1, v4, [C

    fill-array-data v1, :array_136

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [C

    fill-array-data v2, :array_148

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->KEY_MAPS_LOWER:[[C

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_152

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_15e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_16a

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_176

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_182

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_18e

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_19c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_1a8

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->KEY_MAPS_INT:[[I

    return-void

    .line 14
    nop

    :array_ca
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x32t 0x0t
    .end array-data

    :array_d2
    .array-data 0x2
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x33t 0x0t
    .end array-data

    :array_da
    .array-data 0x2
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x34t 0x0t
    .end array-data

    :array_e2
    .array-data 0x2
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x35t 0x0t
    .end array-data

    :array_ea
    .array-data 0x2
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x36t 0x0t
    .end array-data

    :array_f2
    .array-data 0x2
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_fc
    .array-data 0x2
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x38t 0x0t
    .end array-data

    :array_104
    .array-data 0x2
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x39t 0x0t
    .end array-data

    .line 25
    nop

    :array_10e
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x32t 0x0t
    .end array-data

    :array_116
    .array-data 0x2
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x33t 0x0t
    .end array-data

    :array_11e
    .array-data 0x2
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x34t 0x0t
    .end array-data

    :array_126
    .array-data 0x2
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x35t 0x0t
    .end array-data

    :array_12e
    .array-data 0x2
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x36t 0x0t
    .end array-data

    :array_136
    .array-data 0x2
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x37t 0x0t
    .end array-data

    nop

    :array_140
    .array-data 0x2
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x38t 0x0t
    .end array-data

    :array_148
    .array-data 0x2
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x39t 0x0t
    .end array-data

    .line 36
    nop

    :array_152
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_15e
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data

    :array_16a
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data

    :array_176
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    :array_182
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    :array_18e
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_19c
    .array-data 0x4
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a8
    .array-data 0x4
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getKeyCaptions(CZ)[C
    .registers 4
    .parameter "key"
    .parameter "upper"

    .prologue
    const/16 v1, 0x32

    .line 53
    if-lt p0, v1, :cond_18

    const/16 v0, 0x39

    if-gt p0, v0, :cond_18

    .line 54
    if-eqz p1, :cond_11

    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->KEY_MAPS_UPPER:[[C

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    .line 56
    :goto_10
    return-object v0

    .line 54
    :cond_11
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->KEY_MAPS_LOWER:[[C

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    goto :goto_10

    .line 56
    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getKeyCaptionsInt(C)[I
    .registers 3
    .parameter "key"

    .prologue
    const/16 v1, 0x32

    .line 65
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 66
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9KeyMap;->KEY_MAPS_INT:[[I

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    .line 68
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
