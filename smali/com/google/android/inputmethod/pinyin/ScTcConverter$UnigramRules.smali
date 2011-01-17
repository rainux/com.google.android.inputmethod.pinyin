.class Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;
.super Ljava/lang/Object;
.source "ScTcConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/ScTcConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnigramRules"
.end annotation


# instance fields
.field private mScTcUnigram:[C

.field private mTcScUnigramIndex:[S

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/ScTcConverter;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/ScTcConverter;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->this$0:Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const v0, 0x7f060004

    invoke-static {p1, v0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->access$000(Lcom/google/android/inputmethod/pinyin/ScTcConverter;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mScTcUnigram:[C

    .line 149
    const v0, 0x7f060006

    invoke-static {p1, v0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->access$100(Lcom/google/android/inputmethod/pinyin/ScTcConverter;I)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mTcScUnigramIndex:[S

    .line 150
    return-void
.end method

.method private getRuleCount()I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mScTcUnigram:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mScTcUnigram:[C

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private getScOfRuleAt(I)C
    .registers 4
    .parameter "i"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mScTcUnigram:[C

    shl-int/lit8 v1, p1, 0x1

    aget-char v0, v0, v1

    return v0
.end method

.method private getTcOfRuleAt(I)C
    .registers 4
    .parameter "i"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mScTcUnigram:[C

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    return v0
.end method


# virtual methods
.method public convertSc(C)C
    .registers 8
    .parameter "sc"

    .prologue
    const/4 v5, 0x1

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, first:I
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->getRuleCount()I

    move-result v4

    sub-int v2, v4, v5

    .line 167
    .local v2, last:I
    :goto_8
    if-gt v1, v2, :cond_22

    .line 168
    add-int v4, v1, v2

    shr-int/lit8 v3, v4, 0x1

    .line 169
    .local v3, mid:I
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->getScOfRuleAt(I)C

    move-result v0

    .line 170
    .local v0, c:C
    if-ge v0, p1, :cond_17

    .line 171
    add-int/lit8 v1, v3, 0x1

    goto :goto_8

    .line 172
    :cond_17
    if-le v0, p1, :cond_1c

    .line 173
    sub-int v2, v3, v5

    goto :goto_8

    .line 175
    :cond_1c
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->getTcOfRuleAt(I)C

    move-result v0

    move v4, v0

    .line 179
    .end local v0           #c:C
    .end local v3           #mid:I
    :goto_21
    return v4

    :cond_22
    move v4, p1

    goto :goto_21
.end method

.method public convertTc(C)C
    .registers 9
    .parameter "tc"

    .prologue
    const/4 v6, 0x1

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, first:I
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->getRuleCount()I

    move-result v5

    sub-int v3, v5, v6

    .line 185
    .local v3, last:I
    :goto_8
    if-gt v1, v3, :cond_26

    .line 186
    add-int v5, v1, v3

    shr-int/lit8 v4, v5, 0x1

    .line 187
    .local v4, mid:I
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->mTcScUnigramIndex:[S

    aget-short v2, v5, v4

    .line 188
    .local v2, index:S
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->getTcOfRuleAt(I)C

    move-result v0

    .line 189
    .local v0, c:C
    if-ge v0, p1, :cond_1b

    .line 190
    add-int/lit8 v1, v4, 0x1

    goto :goto_8

    .line 191
    :cond_1b
    if-le v0, p1, :cond_20

    .line 192
    sub-int v3, v4, v6

    goto :goto_8

    .line 194
    :cond_20
    invoke-direct {p0, v2}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->getScOfRuleAt(I)C

    move-result v0

    move v5, v0

    .line 198
    .end local v0           #c:C
    .end local v2           #index:S
    .end local v4           #mid:I
    :goto_25
    return v5

    :cond_26
    move v5, p1

    goto :goto_25
.end method
