.class Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
.super Ljava/lang/Object;
.source "SoftKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyRow"
.end annotation


# static fields
.field static final ALWAYS_SHOW_ROW_ID:I = -0x1

.field static final DEFAULT_ROW_ID:I


# instance fields
.field mBottom:I

.field mBottomF:F

.field mRowId:I

.field mSoftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/inputmethod/pinyin/SoftKey;",
            ">;"
        }
    .end annotation
.end field

.field mTop:I

.field mTopF:F

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/SoftKeyboard;)V
    .registers 2
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->this$0:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
