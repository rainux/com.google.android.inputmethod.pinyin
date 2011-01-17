.class Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;
.super Ljava/lang/Object;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageStack"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BLOCK_SIZE:I = 0x20


# instance fields
.field private mStarts:[I

.field private mTail:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 221
    const-class v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    .line 227
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->reset()V

    .line 228
    return-void
.end method


# virtual methods
.method public debug()V
    .registers 5

    .prologue
    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    if-ge v0, v1, :cond_2e

    .line 258
    const-string v1, "pinyin.dev.PageStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_2e
    return-void
.end method

.method public peek()I
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public pop(I)I
    .registers 4
    .parameter "n"

    .prologue
    .line 236
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    if-gt v0, p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :cond_e
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    .line 238
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    aget v0, v0, v1

    return v0
.end method

.method public push(I)V
    .registers 6
    .parameter "start"

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    array-length v1, v1

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    if-gt v1, v2, :cond_19

    .line 243
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x20

    new-array v0, v1, [I

    .line 244
    .local v0, starts:[I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    .line 247
    .end local v0           #starts:[I
    :cond_19
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    aput p1, v1, v2

    .line 248
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    .line 249
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mTail:I

    .line 253
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->mStarts:[I

    aput v1, v0, v1

    .line 254
    return-void
.end method
