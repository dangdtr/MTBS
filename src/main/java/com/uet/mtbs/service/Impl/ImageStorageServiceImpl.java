package com.uet.mtbs.service.Impl;

import com.uet.mtbs.service.IStorageService;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Stream;

public class ImageStorageServiceImpl implements IStorageService {
    private final Path storageFolder = Paths.get("upload");

    public ImageStorageServiceImpl() {
        try {
            Files.createDirectories(storageFolder);
        }catch (IOException ioException) {
            throw new RuntimeException("Cannot init storage", ioException);
        }
    }

    @Override
    public String storeFile(MultipartFile file) {
        System.out.println("store file");
        if (file.isEmpty()) {
            throw new RuntimeException("Failed to store empty file.");
        }
        return null;
    }

    @Override
    public Stream<Path> loadAll() {
        return null;
    }

    @Override
    public byte[] readFileContent(String fileName) {
        return new byte[0];
    }

    @Override
    public void deleteAllFiles() {

    }
}
