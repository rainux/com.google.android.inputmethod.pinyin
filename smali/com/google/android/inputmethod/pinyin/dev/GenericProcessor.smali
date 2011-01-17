.class public Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;
.super Ljava/lang/Object;
.source "GenericProcessor.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;


# static fields
.field public static final LAST_CODE:I


# instance fields
.field mContext:Landroid/content/Context;

.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 3
    .parameter "ime"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method backspace()V
    .registers 5

    .prologue
    const/16 v3, 0x43

    .line 73
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 74
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_b

    .line 77
    :goto_a
    return-void

    .line 75
    :cond_b
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 76
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_a
.end method

.method commitText(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 70
    :goto_f
    return-void

    .line 68
    :cond_10
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 69
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_f
.end method

.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCandidateTouched(ILjava/lang/String;)V
    .registers 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 56
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->commitText(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 4
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 37
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 38
    return-void
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 3
    .parameter "code"
    .parameter "data"

    .prologue
    .line 47
    return-void
.end method

.method public onLongPress(ILjava/lang/Object;)V
    .registers 3
    .parameter "code"
    .parameter "data"

    .prologue
    .line 50
    return-void
.end method

.method public onRelease()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public onReset()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 41
    return-void
.end method

.method setPrediction(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->setPrediction(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method setSuggestion(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->setSuggestion(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method showCandidateWindow(Z)V
    .registers 3
    .parameter "visiable"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->showCandidateWindow(Z)V

    .line 61
    return-void
.end method

.method showComposingWindow(Ljava/lang/CharSequence;Z)V
    .registers 4
    .parameter "text"
    .parameter "visiable"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 93
    return-void
.end method

.method updateSoftKeyboard()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->updateSoftKeyboard()V

    .line 81
    return-void
.end method
