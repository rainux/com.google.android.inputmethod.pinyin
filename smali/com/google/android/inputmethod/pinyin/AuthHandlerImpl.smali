.class public Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;
.super Ljava/lang/Object;
.source "AuthHandlerImpl.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/AuthHandler;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "AuthHandlerImpl"

    sput-object v0, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public authenticate()Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
    .registers 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/inputmethod/pinyin/AccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;

    invoke-direct {v1, v0}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public handleActivityResult(ILandroid/content/Intent;)Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;
    .registers 8
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 47
    const/4 v2, -0x1

    if-ne p1, v2, :cond_34

    .line 48
    if-eqz p2, :cond_17

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_17

    .line 51
    const-string v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, token:Ljava/lang/String;
    new-instance v2, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;

    invoke-direct {v2, v1}, Lcom/google/android/inputmethod/pinyin/AuthHandler$Credentials;-><init>(Ljava/lang/String;)V

    .line 63
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #token:Ljava/lang/String;
    :goto_16
    return-object v2

    .line 57
    :cond_17
    sget-object v2, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 58
    sget-object v2, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->TAG:Ljava/lang/String;

    const-string v3, "No token returned"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_27
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/AuthHandlerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0073

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 63
    :cond_34
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public initialize()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method
