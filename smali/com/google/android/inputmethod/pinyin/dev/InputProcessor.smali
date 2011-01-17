.class public interface abstract Lcom/google/android/inputmethod/pinyin/dev/InputProcessor;
.super Ljava/lang/Object;
.source "InputProcessor.java"


# virtual methods
.method public abstract getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
.end method

.method public abstract onCandidateTouched(ILjava/lang/String;)V
.end method

.method public abstract onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
.end method

.method public abstract onKey(ILjava/lang/Object;)V
.end method

.method public abstract onLongPress(ILjava/lang/Object;)V
.end method

.method public abstract onRelease()V
.end method

.method public abstract onReset()V
.end method

.method public abstract onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
.end method
