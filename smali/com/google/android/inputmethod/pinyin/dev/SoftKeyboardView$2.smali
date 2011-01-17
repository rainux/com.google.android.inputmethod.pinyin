.class final Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$2;
.super Ljava/lang/Object;
.source "SoftKeyboardView.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$2;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceChanged(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 4
    .parameter "newResource"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$2;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$600(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$2;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->measure(II)V

    .line 118
    return-void
.end method
