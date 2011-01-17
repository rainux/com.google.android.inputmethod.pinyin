.class public Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;
.super Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;
.source "T9SymbolProcessor.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CODE_FULL_MOON:I = 0x1e

.field public static final CODE_HALF_MOON:I = 0x1d

.field public static final CODE_LOCK:I = 0x1b

.field public static final CODE_PAGE_DOWN:I = 0x20

.field public static final CODE_PAGE_UP:I = 0x1f

.field public static final CODE_SMILEY:I = 0x1a

.field public static final CODE_SYMBOL:I = 0x19

.field public static final CODE_UNLOCK:I = 0x1c

.field public static final LAST_CODE:I = 0x20

.field static final LOCK_KEY_INDEX:I = 0xa

.field static final SMILEY_KEY_INDEX:I = 0x11

.field public static final START_CODE:I = 0x19

.field private static final STATE_FULL_MOON:I = 0x2

.field private static final STATE_HALF_MOON:I = 0x1

.field private static final STATE_SMILEY:I = 0x3

.field static final SYMBOL_KEY_RECT:[I


# instance fields
.field final KEY_FULL_MOON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_HALF_MOON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_LOCK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PAGE_DOWN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PAGE_UP:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SMILEY_OFF:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SMILEY_ON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_UNLOCK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mDoubleQuoteClosed:Z

.field private mFullMoonCurrentPageIndex:I

.field final mFullMoonPageCount:I

.field mFullMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final mFullMoonSymbols:[Ljava/lang/String;

.field private mHalfMoonCurrentPageIndex:I

.field final mHalfMoonPageCount:I

.field mHalfMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final mHalfMoonSymbols:[Ljava/lang/String;

.field private mIsLocked:Z

.field private mKeyDoubleQuoteClosed:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mKeySingleQuoteClosed:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mPreviousState:I

.field private mSingleQuoteClosed:Z

.field private mSmileyCurrentPageIndex:I

.field final mSmileyImages:[I

.field final mSmileyPageCount:I

.field final mSmileyPopups:[I

.field mSmileySymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final mSmileySymbols:[Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->$assertionsDisabled:Z

    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->SYMBOL_KEY_RECT:[I

    return-void

    .line 12
    :cond_15
    const/4 v0, 0x0

    goto :goto_9

    .line 134
    nop

    :array_18
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 11
    .parameter "ime"

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 24
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->getHalfMoonSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbols:[Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->getFullMoonSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbols:[Ljava/lang/String;

    .line 26
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_1fe

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyImages:[I

    .line 71
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_252

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyPopups:[I

    .line 116
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":-)"

    aput-object v1, v0, v5

    const-string v1, ";-)"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, ":-D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ":-P"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ":-*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":-("

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":\'("

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ":S"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":O"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "B-)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "o_O"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "^o^"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "T_T"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "=.=!"

    aput-object v2, v0, v1

    const-string v1, "^_^"

    aput-object v1, v0, v7

    const/16 v1, 0xf

    const-string v2, "\u56e7"

    aput-object v2, v0, v1

    const-string v1, ">_<"

    aput-object v1, v0, v8

    const/16 v1, 0x11

    const-string v2, "\u2570_\u256f"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ufe41_\ufe41"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "-_-z"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "@_@"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "$_$"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "^_-"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u2192_\u2192"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Orz"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "(x_x)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "*^\ufe4f^*"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "( \u2035\u2032)\u51f8"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u256e(\u256f_\u2570)\u256d"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "0(\u2229_\u2229)0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "(\u00af(\u25cf\u25cf)\u00af)"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "p(^o^)q"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "b(\uffe3\u25bd\uffe3)d"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\\(^o^)/"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "(\uffe3\u02c7\uffe3)"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "~~~>_<~~~"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "(\uffe3\u2200\uffe3)"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "m( _\u3000_ )m"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "(\u30fc\u4eba\u30fc)"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "(\uffe3\u03b5 \uffe3)"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbols:[Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbols:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonPageCount:I

    .line 131
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbols:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonPageCount:I

    .line 132
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbols:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyPageCount:I

    .line 140
    const/16 v0, 0x1a

    const/16 v1, 0x35

    const/16 v2, 0x36

    invoke-static {v0, v7, v1, v2, v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9OnOffControlSoftKeyWithIcon(IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_SMILEY_ON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 143
    const/16 v0, 0x1a

    const/16 v1, 0x35

    const/16 v2, 0x36

    invoke-static {v0, v7, v1, v2, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9OnOffControlSoftKeyWithIcon(IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_SMILEY_OFF:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 146
    const/16 v0, 0x1b

    const/16 v1, 0x25

    const/16 v2, 0x26

    invoke-static {v0, v8, v1, v2, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9OnOffControlSoftKeyWithIcon(IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_LOCK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 149
    const/16 v0, 0x1c

    const/16 v1, 0x23

    const/16 v2, 0x24

    invoke-static {v0, v8, v1, v2, v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9OnOffControlSoftKeyWithIcon(IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_UNLOCK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 152
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x1d

    const/16 v2, 0x11

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_HALF_MOON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 154
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x1e

    const/16 v2, 0x11

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_FULL_MOON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 156
    const/16 v0, 0x1f

    const/16 v1, 0x12

    const/16 v2, 0x27

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_PAGE_UP:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 158
    const/16 v0, 0x20

    const/16 v1, 0x13

    const/16 v2, 0x29

    const/16 v3, 0x2a

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_PAGE_DOWN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 168
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v4, v0, v5

    aput-object v4, v0, v6

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_PINYIN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_STROKE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_ABC:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v7

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_DIGIT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_SYMBOL_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v8

    const/16 v1, 0x11

    aput-object v4, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_PAGE_UP:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_PAGE_DOWN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 181
    iput v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    .line 182
    iput v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mPreviousState:I

    .line 187
    iput v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    .line 188
    iput v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    .line 189
    iput v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    .line 191
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mDoubleQuoteClosed:Z

    .line 192
    iput-boolean v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSingleQuoteClosed:Z

    .line 198
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->createSymbolKeys()V

    .line 199
    return-void

    .line 26
    nop

    :array_1fe
    .array-data 0x4
        0x4ct 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_252
    .array-data 0x4
        0x4dt 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createSymbolKey(Ljava/lang/String;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 25
    .parameter "symbolStr"
    .parameter "rect"
    .parameter "icon"
    .parameter "popupIcon"

    .prologue
    .line 203
    const/16 v8, 0x1a

    .line 204
    .local v8, bg:I
    const/16 v12, 0x1b

    .line 206
    .local v12, hlBg:I
    const/4 v2, -0x1

    move/from16 v0, p3

    move v1, v2

    if-eq v0, v1, :cond_40

    const/4 v2, -0x1

    move/from16 v0, p4

    move v1, v2

    if-eq v0, v1, :cond_40

    .line 207
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v3, 0x19

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    const/16 v16, 0xf

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v13, p3

    move/from16 v17, p4

    invoke-direct/range {v2 .. v19}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    .line 215
    :goto_3f
    return-object v2

    :cond_40
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v3, 0x19

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v9, -0x1

    const/4 v11, 0x3

    const/4 v13, -0x1

    const/4 v15, 0x4

    const/16 v16, 0xf

    const/16 v17, -0x1

    const/16 v19, 0xa

    move-object/from16 v4, p1

    move-object/from16 v10, p1

    move-object/from16 v14, p1

    move-object/from16 v18, p1

    invoke-direct/range {v2 .. v19}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    goto :goto_3f
.end method

.method private createSymbolKeys()V
    .registers 14

    .prologue
    const/4 v10, -0x1

    const/16 v12, 0xa

    .line 224
    sget-boolean v7, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbols:[Ljava/lang/String;

    array-length v7, v7

    rem-int/lit8 v7, v7, 0xa

    if-eqz v7, :cond_14

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 225
    :cond_14
    sget-boolean v7, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_25

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbols:[Ljava/lang/String;

    array-length v7, v7

    rem-int/lit8 v7, v7, 0xa

    if-eqz v7, :cond_25

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 226
    :cond_25
    sget-boolean v7, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_36

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbols:[Ljava/lang/String;

    array-length v7, v7

    rem-int/lit8 v7, v7, 0xa

    if-eqz v7, :cond_36

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 227
    :cond_36
    sget-boolean v7, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_48

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbols:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyImages:[I

    array-length v8, v8

    if-eq v7, v8, :cond_48

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 229
    :cond_48
    const/4 v3, 0x0

    .line 230
    .local v3, offset:I
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbols:[Ljava/lang/String;

    array-length v0, v7

    .line 231
    .local v0, count:I
    new-array v7, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 232
    :cond_50
    if-ge v3, v0, :cond_6a

    .line 233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_53
    if-ge v1, v12, :cond_50

    .line 234
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbols:[Ljava/lang/String;

    aget-object v8, v8, v3

    sget-object v9, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->SYMBOL_KEY_RECT:[I

    aget v9, v9, v1

    invoke-direct {p0, v8, v9, v10, v10}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->createSymbolKey(Ljava/lang/String;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v8

    aput-object v8, v7, v3

    .line 236
    add-int/lit8 v3, v3, 0x1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 240
    .end local v1           #i:I
    :cond_6a
    const/4 v3, 0x0

    .line 241
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbols:[Ljava/lang/String;

    array-length v0, v7

    .line 242
    new-array v7, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 243
    :cond_72
    if-ge v3, v0, :cond_bf

    .line 244
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_75
    if-ge v1, v12, :cond_72

    .line 245
    const/4 v2, -0x1

    .line 246
    .local v2, icon:I
    const/4 v4, -0x1

    .line 247
    .local v4, popupIcon:I
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbols:[Ljava/lang/String;

    aget-object v6, v7, v3

    .line 248
    .local v6, symbolStr:Ljava/lang/String;
    sget-object v7, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->SYMBOL_KEY_RECT:[I

    aget v5, v7, v1

    .line 249
    .local v5, rect:I
    const-string v7, "\u201c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a6

    .line 250
    const/16 v2, 0x39

    .line 251
    const/16 v4, 0x3a

    .line 252
    const-string v7, "\u201d"

    const/16 v8, 0x3b

    const/16 v9, 0x3c

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->createSymbolKey(Ljava/lang/String;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mKeyDoubleQuoteClosed:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 262
    :cond_99
    :goto_99
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-direct {p0, v6, v5, v2, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->createSymbolKey(Ljava/lang/String;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v8

    aput-object v8, v7, v3

    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 255
    :cond_a6
    const-string v7, "\u2018"

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_99

    .line 256
    const/16 v2, 0x41

    .line 257
    const/16 v4, 0x42

    .line 258
    const-string v7, "\u2019"

    const/16 v8, 0x43

    const/16 v9, 0x44

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->createSymbolKey(Ljava/lang/String;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mKeySingleQuoteClosed:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto :goto_99

    .line 267
    .end local v1           #i:I
    .end local v2           #icon:I
    .end local v4           #popupIcon:I
    .end local v5           #rect:I
    .end local v6           #symbolStr:Ljava/lang/String;
    :cond_bf
    const/4 v3, 0x0

    .line 268
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbols:[Ljava/lang/String;

    array-length v0, v7

    .line 269
    new-array v7, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 270
    :cond_c7
    if-ge v3, v0, :cond_e9

    .line 271
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ca
    if-ge v1, v12, :cond_c7

    .line 272
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbols:[Ljava/lang/String;

    aget-object v8, v8, v3

    sget-object v9, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->SYMBOL_KEY_RECT:[I

    aget v9, v9, v1

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyImages:[I

    aget v10, v10, v3

    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyPopups:[I

    aget v11, v11, v3

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->createSymbolKey(Ljava/lang/String;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v8

    aput-object v8, v7, v3

    .line 274
    add-int/lit8 v3, v3, 0x1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 277
    .end local v1           #i:I
    :cond_e9
    return-void
.end method

.method private prepareSoftKeys()V
    .registers 9

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xa

    .line 282
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    packed-switch v4, :pswitch_data_74

    .line 294
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileySymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 295
    .local v2, symbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    mul-int/lit8 v3, v4, 0xa

    .line 296
    .local v3, symbolStart:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_SMILEY_ON:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v4, v7

    .line 300
    :goto_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v6, :cond_61

    .line 301
    add-int v4, v3, v0

    aget-object v1, v2, v4

    .line 302
    .local v1, key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mDoubleQuoteClosed:Z

    if-eqz v4, :cond_2e

    iget-object v4, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "\u201c"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 303
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mKeyDoubleQuoteClosed:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 305
    :cond_2e
    iget-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSingleQuoteClosed:Z

    if-eqz v4, :cond_40

    iget-object v4, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "\u2018"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 306
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mKeySingleQuoteClosed:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 308
    :cond_40
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v4, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 284
    .end local v0           #i:I
    .end local v1           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v2           #symbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v3           #symbolStart:I
    :pswitch_47
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 285
    .restart local v2       #symbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    mul-int/lit8 v3, v4, 0xa

    .line 286
    .restart local v3       #symbolStart:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_SMILEY_OFF:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v4, v7

    goto :goto_15

    .line 289
    .end local v2           #symbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v3           #symbolStart:I
    :pswitch_54
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonSymbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 290
    .restart local v2       #symbolKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    mul-int/lit8 v3, v4, 0xa

    .line 291
    .restart local v3       #symbolStart:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_SMILEY_OFF:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v4, v7

    goto :goto_15

    .line 310
    .restart local v0       #i:I
    :cond_61
    iget-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mIsLocked:Z

    if-eqz v4, :cond_6c

    .line 311
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_UNLOCK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v4, v6

    .line 315
    :goto_6b
    return-void

    .line 313
    :cond_6c
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->KEY_LOCK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v4, v6

    goto :goto_6b

    .line 282
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_54
        :pswitch_47
    .end packed-switch
.end method


# virtual methods
.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->prepareSoftKeys()V

    .line 428
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mCurrentSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 6
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 321
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_12

    .line 322
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    .line 327
    :cond_b
    :goto_b
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    .line 328
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    .line 329
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    .line 330
    return-void

    .line 323
    :cond_12
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_b

    .line 324
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    goto :goto_b
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 9
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 340
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 341
    .local v1, text:Ljava/lang/String;
    packed-switch p1, :pswitch_data_d4

    .line 422
    invoke-super {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onKey(ILjava/lang/Object;)V

    .line 423
    :cond_d
    :goto_d
    return-void

    .line 343
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->commitText(Ljava/lang/String;)V

    .line 345
    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 346
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mDoubleQuoteClosed:Z

    .line 347
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    .line 359
    :cond_1e
    :goto_1e
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mIsLocked:Z

    if-nez v2, :cond_d

    .line 360
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchToPreviousMode()V

    goto :goto_d

    .line 348
    :cond_28
    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 349
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mDoubleQuoteClosed:Z

    .line 350
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_1e

    .line 351
    :cond_36
    const-string v2, "\u2018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 352
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSingleQuoteClosed:Z

    .line 353
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_1e

    .line 354
    :cond_44
    const-string v2, "\u2019"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 355
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSingleQuoteClosed:Z

    .line 356
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_1e

    .line 364
    :pswitch_52
    iput v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    .line 365
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_d

    .line 368
    :pswitch_58
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    .line 369
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_d

    .line 372
    :pswitch_5f
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    if-eq v2, v5, :cond_6d

    .line 373
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mPreviousState:I

    .line 374
    iput v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    .line 378
    :goto_69
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_d

    .line 376
    :cond_6d
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mPreviousState:I

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    goto :goto_69

    .line 381
    :pswitch_72
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    packed-switch v2, :pswitch_data_e8

    .line 391
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyPageCount:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyPageCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    .line 395
    :goto_82
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto :goto_d

    .line 383
    :pswitch_86
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonPageCount:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonPageCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    goto :goto_82

    .line 387
    :pswitch_92
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonPageCount:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonPageCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    goto :goto_82

    .line 398
    :pswitch_9e
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mState:I

    packed-switch v2, :pswitch_data_f0

    .line 408
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyPageCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSmileyCurrentPageIndex:I

    .line 411
    :goto_ac
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto/16 :goto_d

    .line 400
    :pswitch_b1
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonPageCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mFullMoonCurrentPageIndex:I

    goto :goto_ac

    .line 404
    :pswitch_bb
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonPageCount:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mHalfMoonCurrentPageIndex:I

    goto :goto_ac

    .line 414
    :pswitch_c5
    iput-boolean v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mIsLocked:Z

    .line 415
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto/16 :goto_d

    .line 418
    :pswitch_cc
    iput-boolean v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mIsLocked:Z

    .line 419
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->updateSoftKeyboard()V

    goto/16 :goto_d

    .line 341
    nop

    :pswitch_data_d4
    .packed-switch 0x19
        :pswitch_e
        :pswitch_5f
        :pswitch_c5
        :pswitch_cc
        :pswitch_52
        :pswitch_58
        :pswitch_72
        :pswitch_9e
    .end packed-switch

    .line 381
    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_86
        :pswitch_92
    .end packed-switch

    .line 398
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_b1
    .end packed-switch
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mDoubleQuoteClosed:Z

    .line 335
    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolProcessor;->mSingleQuoteClosed:Z

    .line 336
    return-void
.end method
