.class public abstract Lcom/android/inputmethod/latin/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Dictionary$WordCallback;
    }
.end annotation


# static fields
.field protected static final FULL_WORD_FREQ_MULTIPLIER:I = 0x2

.field protected static final INCLUDE_TYPED_WORD_IF_VALID:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public abstract getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .registers 8
    .parameter "word"
    .parameter "length"
    .parameter "typedWord"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v1, p2, :cond_9

    move v1, v3

    .line 91
    :goto_8
    return v1

    .line 86
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, p2, :cond_19

    .line 87
    aget-char v1, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_16

    move v1, v3

    .line 88
    goto :goto_8

    .line 86
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 91
    :cond_19
    const/4 v1, 0x1

    goto :goto_8
.end method
