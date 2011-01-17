.class final Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView$1;
.super Ljava/lang/Object;
.source "ComposingWindow.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceChanged(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 3
    .parameter "newResource"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->access$000(Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 80
    return-void
.end method
