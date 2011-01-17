.class public interface abstract Lcom/google/android/inputmethod/pinyin/AuthHandler;
.super Ljava/lang/Object;
.source "AuthHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
    }
.end annotation


# virtual methods
.method public abstract authenticate()Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
.end method

.method public abstract destroy()V
.end method

.method public abstract handleActivityResult(ILandroid/content/Intent;)Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
.end method

.method public abstract initialize()V
.end method
