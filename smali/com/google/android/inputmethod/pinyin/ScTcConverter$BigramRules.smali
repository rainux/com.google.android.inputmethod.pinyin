.class Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;
.super Ljava/lang/Object;
.source "ScTcConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/ScTcConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigramRules"
.end annotation


# instance fields
.field private mScTcBigram:[C

.field private mTcScBigramIndex:[S

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/ScTcConverter;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/ScTcConverter;)V
    .registers 3
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->this$0:Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const v0, 0x7f060003

    invoke-static {p1, v0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->access$000(Lcom/google/android/inputmethod/pinyin/ScTcConverter;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    .line 214
    const v0, 0x7f060005

    invoke-static {p1, v0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->access$100(Lcom/google/android/inputmethod/pinyin/ScTcConverter;I)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mTcScBigramIndex:[S

    .line 215
    return-void
.end method

.method private getRuleCount()I
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_5
.end method

.method private getScOfRuleAt(I)[C
    .registers 6
    .parameter "i"

    .prologue
    .line 222
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 223
    .local v0, ret:[C
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    shl-int/lit8 v3, p1, 0x2

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 224
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    shl-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 225
    return-object v0
.end method

.method private getTcOfRuleAt(I)[C
    .registers 6
    .parameter "i"

    .prologue
    .line 229
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 230
    .local v0, ret:[C
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    shl-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 231
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mScTcBigram:[C

    shl-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 232
    return-object v0
.end method


# virtual methods
.method public convertSc(CC)[C
    .registers 10
    .parameter "sc0"
    .parameter "sc1"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, first:I
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->getRuleCount()I

    move-result v4

    sub-int v2, v4, v6

    .line 238
    .local v2, last:I
    :goto_9
    if-gt v1, v2, :cond_37

    .line 239
    add-int v4, v1, v2

    shr-int/lit8 v3, v4, 0x1

    .line 240
    .local v3, mid:I
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->getScOfRuleAt(I)[C

    move-result-object v0

    .line 241
    .local v0, c:[C
    aget-char v4, v0, v5

    if-lt v4, p1, :cond_1f

    aget-char v4, v0, v5

    if-ne v4, p1, :cond_22

    aget-char v4, v0, v6

    if-ge v4, p2, :cond_22

    .line 242
    :cond_1f
    add-int/lit8 v1, v3, 0x1

    goto :goto_9

    .line 243
    :cond_22
    aget-char v4, v0, v5

    if-gt v4, p1, :cond_2e

    aget-char v4, v0, v5

    if-ne v4, p1, :cond_31

    aget-char v4, v0, v6

    if-le v4, p2, :cond_31

    .line 244
    :cond_2e
    sub-int v2, v3, v6

    goto :goto_9

    .line 246
    :cond_31
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->getTcOfRuleAt(I)[C

    move-result-object v0

    move-object v4, v0

    .line 250
    .end local v0           #c:[C
    .end local v3           #mid:I
    :goto_36
    return-object v4

    :cond_37
    const/4 v4, 0x0

    goto :goto_36
.end method

.method public convertTc(CC)[C
    .registers 11
    .parameter "tc0"
    .parameter "tc1"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, first:I
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->getRuleCount()I

    move-result v5

    sub-int v3, v5, v7

    .line 256
    .local v3, last:I
    :goto_9
    if-gt v1, v3, :cond_3b

    .line 257
    add-int v5, v1, v3

    shr-int/lit8 v4, v5, 0x1

    .line 258
    .local v4, mid:I
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->mTcScBigramIndex:[S

    aget-short v2, v5, v4

    .line 259
    .local v2, index:S
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->getTcOfRuleAt(I)[C

    move-result-object v0

    .line 260
    .local v0, c:[C
    aget-char v5, v0, v6

    if-lt v5, p1, :cond_23

    aget-char v5, v0, v6

    if-ne v5, p1, :cond_26

    aget-char v5, v0, v7

    if-ge v5, p2, :cond_26

    .line 261
    :cond_23
    add-int/lit8 v1, v4, 0x1

    goto :goto_9

    .line 262
    :cond_26
    aget-char v5, v0, v6

    if-gt v5, p1, :cond_32

    aget-char v5, v0, v6

    if-ne v5, p1, :cond_35

    aget-char v5, v0, v7

    if-le v5, p2, :cond_35

    .line 263
    :cond_32
    sub-int v3, v4, v7

    goto :goto_9

    .line 265
    :cond_35
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->getScOfRuleAt(I)[C

    move-result-object v0

    move-object v5, v0

    .line 269
    .end local v0           #c:[C
    .end local v2           #index:S
    .end local v4           #mid:I
    :goto_3a
    return-object v5

    :cond_3b
    const/4 v5, 0x0

    goto :goto_3a
.end method
