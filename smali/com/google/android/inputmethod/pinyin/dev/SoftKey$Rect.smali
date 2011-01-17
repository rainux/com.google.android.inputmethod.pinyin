.class public Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
.super Ljava/lang/Object;
.source "SoftKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rect"
.end annotation


# instance fields
.field bottom:F

.field left:F

.field right:F

.field top:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->top:F

    .line 137
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->left:F

    .line 138
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->right:F

    .line 139
    iput p4, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->bottom:F

    .line 140
    return-void
.end method
