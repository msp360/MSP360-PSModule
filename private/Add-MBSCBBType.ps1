add-type -typedef @"
using System;
using System.Security;
using System.Net;

namespace MBS.Agent.Plan
{
    public abstract class BackupPlan {
        public string Name;
        public string ID;
        public string StorageAccount;
        public MBS.Agent.Plan.BackupPlanCommonOption BackupPlanCommonOption;
        public MBS.Agent.Plan.Schedule Schedule;
    }

    public class BackupPlanCommonOption {
        public bool SyncRepositoryBeforeRun;
        public bool UseServerSideEncryption;
        public MBS.Agent.Plan.EncryptionAlgorithm EncryptionAlgorithm;
        public SecureString EncryptionPassword;
        public bool UseCompression;
        public MBS.Agent.Plan.StorageClass StorageClass;
        public bool SaveBackupPlanConfiguration;
        public TimeSpan StopIfPlanRunsFor;
        public bool RunMissedPlanImmediately;
        public string PreActionCommand;
        public bool PreActionContinueAnyway;
        public string PostActionCommand;
        public bool PostActionRunAnyway;
        public MBS.Agent.Plan.Notification ResultEmailNotification;
        public MBS.Agent.Plan.Notification AddEventToWindowsLog;
        public Nullable<TimeSpan> KeepVersionPeriod;
        public Nullable<int> KeepNumberOfVersion;
        public bool KeepLastVersion;
        public Nullable<TimeSpan> DelayPurgePeriod;
    }

    public class FileLevelBackupPlan : BackupPlan{
        public MBS.Agent.Plan.Schedule ForceFullSchedule;
        public bool UseBlockLevelBackup;
        public bool BackupNTFSPermissions;
        public bool ForceUsingVSS;
        public bool UseShareReadWriteModeOnError;
        public string DeleteLocallyDeletedFilesAfter;
        public bool BackupEmptyFolders;
        public string BackupOnlyAfter;
        public bool ExcludeSystemHiddenFiles;
        public string SkipFolder;
        public string IncludeFilesMask;
        public string ExcludeFilesMask;
        public bool IgnoreErrorPathNotFound;
        public bool TrackDeletedFiles;
        public string BackupFile;
        public string BackupDirectory;
        public bool GenerateDetailedReport;
    }  

    public class ImageBasedBackupPlan : BackupPlan {
        public MBS.Agent.Plan.Schedule ForceFullSchedule;
        public string BackupVolumes;
        public string[] Volumes;
        public bool disableVSS;
        public bool ignoreBadSectors;
        public bool useSystemVSS;
        public bool useSyntheticFull;
        public int prefetchBlockCount;
        public string blockSize;
    }

    public class HyperVBackupPlan : BackupPlan {
        public MBS.Agent.Plan.Schedule ForceFullSchedule;
        public string BackupVM;
        public string[] VirtualMachine;
    }

    public class MSSQLBackupPlan : BackupPlan {
        public MBS.Agent.Plan.Schedule DiffSchedule;
        public MBS.Agent.Plan.Schedule TLogSchedule;
        public string InstanceName;
        public bool useSSL;
        public bool useWinauth;
        public string UserName;
        public string Password;
        public string DBSelectionType;
        public string[] Databases;
        public bool CopyOnly;
        public bool Verify;
    }

    public class Schedule {
        public MBS.Agent.Plan.ScheduleFrequency Frequency;
        public DateTime At;
        public int DayOfMonth;
        public System.DayOfWeek[] DayOfWeek;
        public string WeekNumber;
        public TimeSpan OccursFrom;
        public TimeSpan OccursTo;
        public TimeSpan OccursEvery;
        public int RepeatInterval;
        public DateTime RepeatStartDate;
    }

    public class RestorePlanCommonOption {
        public bool SyncRepositoryBeforeRun;
        public SecureString EncryptionPassword;
        public TimeSpan StopIfPlanRunsFor;
        public string PreActionCommand;
        public bool PreActionContinueAnyway;
        public string PostActionCommand;
        public bool PostActionRunAnyway;
        public MBS.Agent.Plan.Notification ResultEmailNotification;
        public MBS.Agent.Plan.Notification AddEventToWindowsLog;
    }

    public enum DatabaseSelectionType
    {
        All,
        User,
        SelectedDB
    }

    public enum BackupVolumeType
    {
        AllVolumes,
        SystemRequired,
        SelectedVolumes
    }

    public enum BackupVMType
    {
        All,
        OnlyRunning,
        SelectedVM
    }

    public enum Period
    {
        day,
        week,
        month,
        year
    }

    public enum EncryptionAlgorithm
    {
        AES128,
        AES192,
        AES256
    }
    
    public enum StorageClass
    {
        Standard,
        IntelligentTiering,
        StandardIA,
        OneZoneIA,
        Glacier,
        GlacierDeepArchive
    }

    public enum Notification
    {
        errorOnly,
        on,
        off
    }

    public enum ScheduleFrequency
    {
        Once,
        Daily,
        Weekly,
        Monthly,
        DayofMonth,
        Realtime
    }

    public enum GlacierRestoreType
    {
        Expedited,
        Standard,
        Bulk
    }

    public enum RestoreVolumeType
    {
        AllVolumes,
        SelectedVolume
    }

    public enum VirtualDiskType
    {
        VHDdynamic,
        VHDfixed,
        VHDXdynamic,
        Raw,
        Rawsparse,
        Tar,
        Tgz,
        VDIdynamic,
        VDIfixed,
        VMDKdynamic,
        VMDKfixed
    }
}

namespace MBS.Agent
{
    public class License {
        public string User;
        public string ID;
    }

    public class StorageAccount {
        public string ID;
        public string Type;
        public string SGCloudTypeValue;
        public string BackupPath;
        public string Bucket;
        public string BucketID;
        public string DisplayName;
        public bool ForceSharing;
        public bool IsRestoreOnly;
        public string SGAccountID;
        public string SGEndPoint;
        public string SGFolderPath;
        public string SGHttpsEndPoint;
        public int SignatureVersion;
        public string Path;
        public bool UseSSL;
    }

    public class StorageAccountContent {
        public MBS.Agent.StorageAccountContentType Type; 
        public string Name;
        public string FullName;
        public Nullable<DateTime> Date;
        public long Size;
        public bool IsCompressed; 
        public bool IsEncrypted; 
        public FileVersions[] Versions;
    }

    public class TestStorageAccountResult {
        public string Name;
        public string HostName;
        public int RemotePort;
        public IPAddress RemoteAddress;
        public bool TestSucceeded; 
    }

    public class FileVersions {
        public DateTime Date; 
        public long Size; 
        public bool IsCompressed; 
        public bool IsEncrypted; 

    }
    public enum StorageAccountContentType
    {
        Folder,
        File,
        Disk
    }

    public class CLIResult
    {
        public string[] Result;
        public string[] Warnings;
        public string[] Errors;
    }

    public class CLIRawResult
    {
        public string stdout;
        public string stderr;
        public int ExitCode;
    }

    public class IBBBackup
    {
        public string Name;
        public DateTime DateUTC;
        public string Type;
        public bool Encrypted;
        public MBS.Agent.IBBDisk[] Disks;
    }

    public class IBBDisk
    {
        public int Disk;
        public string Type;
        public long Capacity;
        public string Model;
        public string Id;
        public MBS.Agent.IBBVolume[] Volumes;
    }

    public class IBBVolume
    {
        public string MountPoints;
        public bool Supported;
        public bool RequiredBySystem;
        public string DriveType;
        public string FileSystemType;
        public string WindowsVolumeIdentity;
        public int Length;
        public int UsedSpace;
        public string Label;
        public bool IsBoot;
        public bool IsActive;
    }
}


"@