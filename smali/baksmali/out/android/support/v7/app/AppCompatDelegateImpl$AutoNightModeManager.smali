.class final Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Landroid/support/v7/app/TwilightManager;

.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/TwilightManager;)V
    .registers 3
    .param p1    # Landroid/support/v7/app/AppCompatDelegateImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {p2}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_10
    return-void
.end method

.method dispatchTimeChanged()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eq v0, v1, :cond_11

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->applyDayNight()Z

    :cond_11
    return-void
.end method

.method getApplyableNightMode()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mTwilightManager:Landroid/support/v7/app/TwilightManager;

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mIsNight:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method setup()V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_e

    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_2e

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2e
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
